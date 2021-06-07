//
//  MovieListViewController.swift
//  movies
//
//  Created by Felipe Young on 6/3/21.
//

import UIKit

class MovieListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var movieSearchBar: UISearchBar!
    @IBOutlet weak var tipoSegmentedControl: UISegmentedControl!
    
    var selectedMovie : Int = 0
    var movieBrain : MovieBrain = MovieBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.94892627, green: 0.9490850568, blue: 0.9489052892, alpha: 1)
        tableView.delegate = self
        tableView.dataSource = self
        movieSearchBar.delegate = self
    }
    
    
    @IBAction func onChangeSC(_ sender: UISegmentedControl) {
        if(tipoSegmentedControl.selectedSegmentIndex == 0){
            movieBrain.setSortOrder(ord: "asc")
        }
        else{
            movieBrain.setSortOrder(ord: "des")
        }
        tableView.reloadData()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "movieDetails"{
            let movieDetailsVC = segue.destination as! MovieDetailsViewController
            movieDetailsVC.movie = movieBrain.getMovieArray()[selectedMovie]
        }
    }

}


extension MovieListViewController : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieBrain.getMovieArray().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movie = movieBrain.getMovieArray()[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as! MovieCell
        cell.setMovie(movie: movie)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedMovie = indexPath.row
        performSegue(withIdentifier: "movieDetails", sender: self)
    }
}

extension MovieListViewController : UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        movieBrain.setFilter(filter: searchText)
        tableView.reloadData()
    }
}


