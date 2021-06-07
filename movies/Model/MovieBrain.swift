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
        let movie1 = Movie(name: "Raya and the Last Dragon", image: #imageLiteral(resourceName: "raya"), id : 527774 , description: "Long ago, in the fantasy world of Kumandra, humans and dragons lived together in harmony. But when an evil force threatened the land, the dragons sacrificed themselves to save humanity. Now, 500 years later, that same evil has returned and it’s up to a lone warrior, Raya, to track down the legendary last dragon to restore the fractured land and its divided people.", date: "July 2, 2019")
        let movie2 = Movie(name: "Army of the Dead", image: #imageLiteral(resourceName: "armyofthedead"), id: 503736, description: "Following a zombie outbreak in Las Vegas, a group of mercenaries take the ultimate gamble: venturing into the quarantine zone to pull off the greatest heist ever attempted ", date: "March 2, 2021")
        let movie3 = Movie(name: "Cruella", image: #imageLiteral(resourceName: "cruela"), id: 337404, description: "In 1970s London amidst the punk rock revolution, a young grifter named Estella is determined to make a name for herself with her designs. She befriends a pair of young thieves who appreciate her appetite for mischief, and together they are able to build a life for themselves on the London streets. One day, Estella’s flair for fashion catches the eye of the Baroness von Hellman, a fashion legend who is devastatingly chic and terrifyingly haute. But their relationship sets in motion a course of events and revelations that will cause Estella to embrace her wicked side and become the raucous, fashionable and revenge-bent Cruella.", date: "December 2, 2021")
        let movie4 = Movie(name: "Wrath of Man", image: #imageLiteral(resourceName: "wrath"), id : 637649, description: "Adapted from the 2004 French film Le Convoyeur (aka Cash Truck), and borrowing the basic outline of the story, Wrath of Man is a time-shifting neo-noir crime thriller, filled with tough, sometimes violent men: gangsters and former combat veterans, mostly, with a smattering of security guards and cops", date: "August 2, 2019")
        let movie5 = Movie(name: "Tom Clancy's Without Remorse" , image: #imageLiteral(resourceName: "withoutRemorse") , id :567189, description: "An elite Navy SEAL uncovers an international conspiracy while seeking justice for the murder of his pregnant wife in Tom Clancy's Without Remorse, the explosive origin story of action hero John Clark -- one of the most popular characters in author Tom Clancy's Jack Ryan universe.", date: "July 2, 2019")
        let movie7 = Movie(name: "Godzilla v Kong" , image: #imageLiteral(resourceName: "godzillavskong") , id: 399566, description: "Godzilla vs. Kong is a 2021 American monster film directed by Adam Wingard. ... In the film, Kong clashes with Godzilla as humans lure the ape into the Hollow Earth to retrieve a power source for a weapon to stop Godzilla's mysterious rampages.", date: "July 2, 2019")
        let movie8 = Movie(name: "I am all girls" , image: #imageLiteral(resourceName: "iamallgirls") , id: 823855, description: "A special crimes investigator forms an unlikely bond with a serial killer to bring down a global child sex trafficking syndicate. A special crimes investigator forms an unlikely bond with a serial killer to bring down a global child sex trafficking syndicate.", date: "July 2, 2019")
        temp_movie.append(movie1)
        temp_movie.append(movie2)
        temp_movie.append(movie3)
        temp_movie.append(movie4)
        temp_movie.append(movie5)
        temp_movie.append(movie7)
        temp_movie.append(movie8)
        return temp_movie
    }
    
    
}



