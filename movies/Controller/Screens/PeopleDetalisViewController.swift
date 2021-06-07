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
        super.viewDidLoad()
        peopleImage.image = people?.getImage()
        nameLabel.text = people?.getName()
        peoplebiography.text = people?.getBiography()
    }
    
    @IBAction func onInfoPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "showDetails", sender: self)
    }
}


