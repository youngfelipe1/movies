//
//  Movie.swift
//  movies
//
//  Created by Felipe Young on 6/3/21.
//

import Foundation

struct Movie {
    let name : String
    let image : String
    let date : String
    let description : String
    
    init(name : String , image: String , date: String , description: String){
        self.name = name
        self.image = image
        self.date = date
        self.description = description
    }
}
