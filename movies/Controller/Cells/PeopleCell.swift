//
//  PeopleCell.swift
//  movies
//
//  Created by Felipe Young on 6/4/21.
//

import UIKit

class PeopleCell: UITableViewCell {
    
    @IBOutlet weak var peopleName: UILabel!
    @IBOutlet weak var peopleImageView: UIImageView!
    @IBOutlet weak var peopleKnownMovies: UITextView!
    
    func setPeople(people : People){
        peopleName.text = people.getName()
        peopleImageView.image = people.getImage()
        peopleKnownMovies.text = "Known for: " + people.getKnownFor()
    }

}
