//
//  MovieBrain.swift
//  movies
//
//  Created by Felipe Young on 6/6/21.
//

import Foundation


struct MovieBrain {
    var movieArray : [Movie] = []
    var filter : String
    var order : String
    
    init(){
        order = "asc"
        filter = ""
        movieArray = createMovieArray()
    }
    
    mutating func setSortOrder(ord : String){
        order = ord
    }
    
    mutating func setFilter(filter:String){
        self.filter = filter
    }
    
    
    mutating func getMovieArray()->[Movie]{
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
        let movie1 = Movie(name: "Raya", image: #imageLiteral(resourceName: "raya"), date: "2021-03-03", description: "Long ago, in the fantasy world of Kumandra, humans and dragons lived together in harmony. But when an evil force threatened the land, the dragons sacrificed themselves to save humanity. Now, 500 years later, that same evil has returned and it’s up to a lone warrior, Raya, to track down the legendary last dragon to restore the fractured land and its divided people.")
        let movie2 = Movie(name: "Army of the Dead", image: #imageLiteral(resourceName: "armyofthedead"), date: "2021-05-14", description: "Following a zombie outbreak in Las Vegas, a group of mercenaries take the ultimate gamble: venturing into the quarantine zone to pull off the greatest heist ever attempted ")
        let movie3 = Movie(name: "Cruella", image: #imageLiteral(resourceName: "cruela"), date: "2021-05-26", description: "In 1970s London amidst the punk rock revolution, a young grifter named Estella is determined to make a name for herself with her designs. She befriends a pair of young thieves who appreciate her appetite for mischief, and together they are able to build a life for themselves on the London streets. One day, Estella’s flair for fashion catches the eye of the Baroness von Hellman, a fashion legend who is devastatingly chic and terrifyingly haute. But their relationship sets in motion a course of events and revelations that will cause Estella to embrace her wicked side and become the raucous, fashionable and revenge-bent Cruella.")
        let movie4 = Movie(name: "The Flash", image: #imageLiteral(resourceName: "flash"), date: "2021-05-26", description: "After a particle accelerator causes a freak storm, CSI Investigator Barry Allen is struck by lightning and falls into a coma. Months later he awakens with the power of super speed, granting him the ability to move through Central City like an unseen guardian angel. Though initially excited by his newfound powers, Barry is shocked to discover he is not the only meta-human who was created in the wake of the accelerator explosion -- and not everyone is using their new powers for good. Barry partners with S.T.A.R. Labs and dedicates his life to protect the innocent. For now, only a few close friends and associates know that Barry is literally the fastest man alive, but it won't be long before the world learns what Barry Allen has become...The Flash.")
        let movie5 = Movie(name: "Legacies" , image: #imageLiteral(resourceName: "twd") , date: "2021-05-26", description: "After a particle accelerator causes a freak storm, CSI Investigator Barry Allen is struck by lightning and falls into a coma. Months later he awakens with the power of super speed, granting him the ability to move through Central City like an unseen guardian angel. Though initially excited by his newfound powers, Barry is shocked to discover he is not the only meta-human who was created in the wake of the accelerator explosion -- and not everyone is using their new powers for good. Barry partners with S.T.A.R. Labs and dedicates his life to protect the innocent. For now, only a few close friends and associates know that Barry is literally the fastest man alive, but it won't be long before the world learns what Barry Allen has become...The Flash.")
        let movie6 = Movie(name: "Superman and Lois" , image: #imageLiteral(resourceName: "superman") , date: "2021-05-26", description: "After a particle accelerator causes a freak storm, CSI Investigator Barry Allen is struck by lightning and falls into a coma. Months later he awakens with the power of super speed, granting him the ability to move through Central City like an unseen guardian angel. Though initially excited by his newfound powers, Barry is shocked to discover he is not the only meta-human who was created in the wake of the accelerator explosion -- and not everyone is using their new powers for good. Barry partners with S.T.A.R. Labs and dedicates his life to protect the innocent. For now, only a few close friends and associates know that Barry is literally the fastest man alive, but it won't be long before the world learns what Barry Allen has become...The Flash.")
        let movie7 = Movie(name: "Godzilla v Kong" , image: #imageLiteral(resourceName: "godzillavskong") , date: "2021-05-26", description: "After a particle accelerator causes a freak storm, CSI Investigator Barry Allen is struck by lightning and falls into a coma. Months later he awakens with the power of super speed, granting him the ability to move through Central City like an unseen guardian angel. Though initially excited by his newfound powers, Barry is shocked to discover he is not the only meta-human who was created in the wake of the accelerator explosion -- and not everyone is using their new powers for good. Barry partners with S.T.A.R. Labs and dedicates his life to protect the innocent. For now, only a few close friends and associates know that Barry is literally the fastest man alive, but it won't be long before the world learns what Barry Allen has become...The Flash.")
        let movie8 = Movie(name: "Good Doctor" , image: #imageLiteral(resourceName: "gooddoc") , date: "2021-05-26", description: "After a particle accelerator causes a freak storm, CSI Investigator Barry Allen is struck by lightning and falls into a coma. Months later he awakens with the power of super speed, granting him the ability to move through Central City like an unseen guardian angel. Though initially excited by his newfound powers, Barry is shocked to discover he is not the only meta-human who was created in the wake of the accelerator explosion -- and not everyone is using their new powers for good. Barry partners with S.T.A.R. Labs and dedicates his life to protect the innocent. For now, only a few close friends and associates know that Barry is literally the fastest man alive, but it won't be long before the world learns what Barry Allen has become...The Flash.")
        
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


