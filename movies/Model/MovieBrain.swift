//
//  MovieBrain.swift
//  movies
//
//  Created by Felipe Young on 6/6/21.
//

import Foundation


class MovieBrain {
    var movieArray : [Movie] = []
    var filter : String
    var order : String
    
    init(){
        order = "asc"
        filter = ""
        movieArray = createMovieArray()
    }
    
    func setSortOrder(ord : String){
        order = ord
    }
    
    func setFilter(filter:String){
        self.filter = filter
    }
    
    
    func getMovieArray()->[Movie]{
        var movies : [Movie] = movieArray
        if(filter != ""){
            movies = movieArray.filter{$0.name.contains(filter)}
        }
        if(order == "asc"){
            movies.sort{
                $0.name < $1.name
            }
        }
        else{
            movies.sort{
                $0.name > $1.name
            }
        }
        return movies
    }
    
    
    func createMovieArray()->[Movie]{
        var temp_movie : [Movie] = []
        let movie1 = Movie(name: "Raya and the Last Dragon", image: #imageLiteral(resourceName: "raya"), id : 527774 )
        let movie2 = Movie(name: "Army of the Dead", image: #imageLiteral(resourceName: "armyofthedead"), id: 503736)
        let movie3 = Movie(name: "Cruella", image: #imageLiteral(resourceName: "cruela"), id: 337404)
        let movie4 = Movie(name: "Wrath of Man", image: #imageLiteral(resourceName: "wrath"), id : 637649)
        let movie5 = Movie(name: "Tom Clancy's Without Remorse" , image: #imageLiteral(resourceName: "withoutRemorse") , id :567189)
        let movie6 = Movie(name: "Superman and Lois" , image: #imageLiteral(resourceName: "superman") , id: 6)
        let movie7 = Movie(name: "Godzilla v Kong" , image: #imageLiteral(resourceName: "godzillavskong") , id: 399566)
        let movie8 = Movie(name: "I am all girls" , image: #imageLiteral(resourceName: "iamallgirls") , id: 823855)
        temp_movie.append(movie1)
        temp_movie.append(movie2)
        temp_movie.append(movie3)
        temp_movie.append(movie4)
        temp_movie.append(movie5)
        temp_movie.append(movie6)
        temp_movie.append(movie7)
        temp_movie.append(movie8)
        return temp_movie
    }
    
    
}


