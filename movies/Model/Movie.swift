//
//  Movie.swift
//  movies
//
//  Created by Felipe Young on 6/3/21.
//

import UIKit

class Movie {
    let name : String
    let image : UIImage
    let id : Int
    var description: String
    var budget : Int
    
    init(name : String , image: UIImage, id: Int){
        self.name = name
        self.image = image
        self.id = id
        self.description = ""
        self.budget = 0
    }
    
    
    
    

}
