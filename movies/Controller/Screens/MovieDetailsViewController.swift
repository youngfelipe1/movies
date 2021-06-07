//
//  MovieDetailsViewController.swift
//  movies
//
//  Created by Felipe Young on 6/4/21.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieScoreLabel: UILabel!
    @IBOutlet weak var movieDescriptionLabel: UILabel!
    var movie : Movie?
    override func viewDidLoad() {
        super.viewDidLoad()
        movieImage.image = movie?.image
        movieTitleLabel.text = movie?.name
        movieScoreLabel.text = "99%"
        movieDescriptionLabel.numberOfLines = 20
        let movie_id = movie!.id
        getMovieData(movie_id: movie_id)
        
        
    }
    
    func getMovieData(movie_id: Int){
        let url = "https://api.themoviedb.org/3/movie/" + "\(movie_id)" + "?api_key=f5b6abcb07a14d121bdd075f9134a831&language=en-US"
        URLSession.shared.dataTask(with: URL(string: url)! , completionHandler: {data, response , error in
            guard let data=data , error == nil else{
                print("There is a problem mate")
                return
            }
            // have the data
            var result : MDBData
            do{
                result = try JSONDecoder().decode(MDBData.self , from: data)
                print(result)
            }
            catch{
                print("errorrrr")
            }
        }).resume()
   }
}

struct Response: Codable{
    let results : MDBData
    let status : String
}

struct MDBData : Codable{
    let budget : Int
    let overview : String
    let release_date : String
    
    func getOverview()->String{
        return overview
    }
}
