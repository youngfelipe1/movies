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
    let description: String
    let date : String
    var budget : Int
    
    
    init(name : String , image: UIImage, id: Int, description: String, date: String){
        self.name = name
        self.image = image
        self.id = id
        self.description = description
        self.budget = 0
        self.date = date
    }
    
    func getName()->String{
        return name
    }
    
    func getDescription()->String{
        return description
    }
    
    func getImage()->UIImage{
        return image
    }
    
    
    
    
    
    

}
