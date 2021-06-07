//
//  PeopleBrain.swift
//  movies
//
//  Created by Felipe Young on 6/6/21.
//

import Foundation

class PeopleBrain{
    var peopleArray : [People] = []
    var filter : String
    
    init(){
        filter = ""
        peopleArray = createPeopleArray()
    }
    
    func setFilter(filter : String){
        self.filter = filter
    }
    
    func getPeopleArray()->[People]{
        var aux_people : [People] = peopleArray
        if(filter != ""){
            aux_people = peopleArray.filter{$0.name.starts(with: filter)}
        }
        return aux_people
    }
    
    func createPeopleArray()->[People]{
        var temp_array : [People] = []
        let person1 = People(name: "Ken Jeong", movies: [], biography: "Cobb, a skilled thief who commits corporate espionage by infiltrating the subconscious of his targets is offered a chance to regain his old life as payment for a task considered to be impossible: \"inception\", the implantation of another person's idea into a target's subconscious.", image: #imageLiteral(resourceName: "kenJeong"))
        let person2 = People(name: "Keanu Reeves", movies: [], biography: "Born in the american forest, raised by bears and wolves que turned out to be a good actor. There's nothing else to say.", image: #imageLiteral(resourceName: "keanu"))
        let person3 = People(name: "Carlitos Nuñez", movies: [], biography: "Cobb, a skilled thief who commits corporate espionage by infiltrating the subconscious of his targets is offered a chance to regain his old life as payment for a task considered to be impossible: \"inception\", the implantation of another person's idea into a target's subconscious.", image: #imageLiteral(resourceName: "kenJeong"))
        let person4 = People(name: "Ruben Abraphmian", movies: [], biography: "Cobb, a skilled thief who commits corporate espionage by infiltrating the subconscious of his targets is offered a chance to regain his old life as payment for a task considered to be impossible: \"inception\", the implantation of another person's idea into a target's El MUNDO DE LAS MANGUERAS", image: #imageLiteral(resourceName: "kenJeong"))
        let person5 = People(name: "Maercos Nuñez", movies: [], biography: "Cobb, a skilled thief who commits corporate espionage by infiltrcosooold life as payment for a task considered to be impossible: \"inception\", the implantation of another person's idea into a target's subconscious.", image: #imageLiteral(resourceName: "keanu"))
        temp_array.append(person1)
        temp_array.append(person2)
        temp_array.append(person3)
        temp_array.append(person4)
        temp_array.append(person5)
        temp_array.append(person1)
        temp_array.append(person2)
        temp_array.append(person3)
        temp_array.append(person3)
        temp_array.append(person4)
        return temp_array
    }
}
