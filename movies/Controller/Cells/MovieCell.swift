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
        movieImageView.image = movie.getImage()
        movieTitle.text = movie.getName()
        movieDescription.text = movie.getDescription()
        movieDate.text = movie.date
    }
}
