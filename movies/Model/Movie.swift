//
//  Movie.swift
//  movies
//
//  Created by Felipe Young on 6/3/21.
//

import UIKit

struct Movie {
    let name : String
    let image : UIImage
    let date : String
    let description : String
    
    init(name : String , image: UIImage , date: String , description: String){
        self.name = name
        self.image = image
        self.date = date
        self.description = description
    }
}
