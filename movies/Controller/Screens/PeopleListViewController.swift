//
//  PeopleListViewController.swift
//  movies
//
//  Created by Felipe Young on 6/3/21.
//

import UIKit

class PeopleListViewController: UIViewController {
    @IBOutlet weak var peopleSearchBar: UISearchBar!
    
    @IBOutlet weak var peopleTableView: UITableView!
    var peopleBrain : PeopleBrain = PeopleBrain()
    var selectedPeople : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        peopleTableView.delegate = self
        peopleTableView.dataSource = self
        peopleSearchBar.delegate = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "peopleDetails"{
            let peopleDetailsVC = segue.destination as! PeopleDetalisViewController
            peopleDetailsVC.people = peopleBrain.getPeopleArray()[selectedPeople]
        }
    }


}

extension PeopleListViewController : UITableViewDataSource , UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peopleBrain.getPeopleArray().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let people = peopleBrain.getPeopleArray()[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "PeopleCell") as! PeopleCell
        cell.setPeople(people: people)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedPeople = indexPath.row
        performSegue(withIdentifier: "peopleDetails", sender: self)
    }
    

    
}
extension PeopleListViewController : UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        peopleBrain.setFilter(filter: searchText)
        peopleTableView.reloadData()
    }
}
