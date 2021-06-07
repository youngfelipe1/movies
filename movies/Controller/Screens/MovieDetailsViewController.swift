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
        movieImage.image = movie?.getImage()
        movieTitleLabel.text = movie?.getName()
        movieScoreLabel.text = "Score 99%"
        movieDescriptionLabel.text = movie?.getDescription()
        movieDescriptionLabel.numberOfLines = 20
    }
    
}

