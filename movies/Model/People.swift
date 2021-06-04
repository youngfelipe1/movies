//
//  People.swift
//  movies
//
//  Created by Felipe Young on 6/4/21.
//

import UIKit

struct People{
    let name : String
    let movies : [Movie]
    let biography : String
    let image : UIImage
    
    init(name:String , movies : [Movie] , biography: String , image: UIImage){
        self.name = name
        self.movies = movies
        self.biography = biography
        self.image = image
    }
}
