//
//  AccountSettingsViewController.swift
//  movies
//
//  Created by Felipe Young on 6/3/21.
//

import UIKit

class AccountSettingsViewController: UIViewController {
    @IBOutlet weak var profileImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImage.image = #imageLiteral(resourceName: "nonexistentperson")
        profileImage.layer.cornerRadius = profileImage.frame.height/2
    }
    


}
