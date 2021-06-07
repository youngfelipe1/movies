//
//  MovieCell.swift
//  movies
//
//  Created by Felipe Young on 6/3/21.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDescription: UITextView!
    @IBOutlet weak var movieDate: UILabel!
    
    func setMovie(movie : Movie){
        movieImageView.image = movie.image
        movieTitle.text = movie.name
//        movieDescription.text = movie.description
//        movieDate.text = movie.date
    }
}
