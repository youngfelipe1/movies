//
//  PeopleDetalisViewController.swift
//  movies
//
//  Created by Felipe Young on 6/5/21.
//

import UIKit

class PeopleDetalisViewController: UIViewController {
    @IBOutlet weak var peopleImage: UIImageView!
    
    @IBOutlet weak var peoplebiography: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    var people : People?

    override func viewDidLoad() {
        // peliculas hardcodeadas
        super.viewDidLoad()
        peopleImage.image = people?.image
        nameLabel.text = people?.name
        peoplebiography.text = people?.biography
        print("holasss")
    }
    
    @IBAction func onInfoPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "showDetails", sender: self)
    }
}


