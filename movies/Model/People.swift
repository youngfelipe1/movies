//
//  People.swift
//  movies
//
//  Created by Felipe Young on 6/4/21.
//

import UIKit

struct People{
    let name : String
    let biography : String
    let image : UIImage
    let knownFor : String
    
    init(name:String , knownFor : String , biography: String , image: UIImage){
        self.name = name
        self.biography = biography
        self.image = image
        self.knownFor = knownFor
    }
    
    func getName()->String{
        return name
    }
    
    func getBiography()->String{
        return biography
    }
    
    func getImage()->UIImage{
        return image
    }
    
    func getKnownFor()->String{
        return knownFor
    }
}
