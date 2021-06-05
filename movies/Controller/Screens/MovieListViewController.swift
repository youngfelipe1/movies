//
//  MovieListViewController.swift
//  movies
//
//  Created by Felipe Young on 6/3/21.
//

import UIKit

class MovieListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tipoSegmentedControl: UISegmentedControl!
    
    var selectedMovie : Int = 0
    var movieArray : [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.94892627, green: 0.9490850568, blue: 0.9489052892, alpha: 1)
        movieArray = createMovieArray()
        // Sort the array when it first loads up
        movieArray.sort{
            $0.name < $1.name
        }
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    @IBAction func onChangeSC(_ sender: UISegmentedControl) {
        if(tipoSegmentedControl.selectedSegmentIndex == 0){
            movieArray.sort{
                $0.name < $1.name
            }
        }
        else{
            movieArray.sort{
                $0.name > $1.name
            }
        }
        tableView.reloadData()
    }
    

    
    func createMovieArray()->[Movie]{
        var temp_movie : [Movie] = []
        let movie1 = Movie(name: "Raya", image: #imageLiteral(resourceName: "raya"), date: "2021-03-03", description: "Long ago, in the fantasy world of Kumandra, humans and dragons lived together in harmony. But when an evil force threatened the land, the dragons sacrificed themselves to save humanity. Now, 500 years later, that same evil has returned and it’s up to a lone warrior, Raya, to track down the legendary last dragon to restore the fractured land and its divided people.")
        let movie2 = Movie(name: "Army of the Dead", image: #imageLiteral(resourceName: "armyofthedead"), date: "2021-05-14", description: "Following a zombie outbreak in Las Vegas, a group of mercenaries take the ultimate gamble: venturing into the quarantine zone to pull off the greatest heist ever attempted.")
        let movie3 = Movie(name: "Cruella", image: #imageLiteral(resourceName: "cruela"), date: "2021-05-26", description: "In 1970s London amidst the punk rock revolution, a young grifter named Estella is determined to make a name for herself with her designs. She befriends a pair of young thieves who appreciate her appetite for mischief, and together they are able to build a life for themselves on the London streets. One day, Estella’s flair for fashion catches the eye of the Baroness von Hellman, a fashion legend who is devastatingly chic and terrifyingly haute. But their relationship sets in motion a course of events and revelations that will cause Estella to embrace her wicked side and become the raucous, fashionable and revenge-bent Cruella.")
        temp_movie.append(movie1)
        temp_movie.append(movie2)
        temp_movie.append(movie3)
        temp_movie.append(movie1)
        temp_movie.append(movie2)
        temp_movie.append(movie3)
        temp_movie.append(movie2)
        temp_movie.append(movie3)
        temp_movie.append(movie1)
        temp_movie.append(movie2)
        return temp_movie
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "movieDetails"{
            let movieDetailsVC = segue.destination as! MovieDetailsViewController
            movieDetailsVC.movie = movieArray[selectedMovie]
        }
    }

}


extension MovieListViewController : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movie = movieArray[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as! MovieCell
        cell.setMovie(movie: movie)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedMovie = indexPath.row
        performSegue(withIdentifier: "movieDetails", sender: self)
    }
    
    
}
