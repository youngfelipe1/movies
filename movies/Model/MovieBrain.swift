//
//  MovieBrain.swift
//  movies
//
//  Created by Felipe Young on 6/4/21.
//

import Foundation

func createMovieArray()->[Movie]{
    var temp_movie : [Movie] = []
    let movie1 = Movie(name: "Raya", image: #imageLiteral(resourceName: "raya"), date: "2021-03-03", description: "Long ago, in the fantasy world of Kumandra, humans and dragons lived together in harmony. But when an evil force threatened the land, the dragons sacrificed themselves to save humanity. Now, 500 years later, that same evil has returned and it’s up to a lone warrior, Raya, to track down the legendary last dragon to restore the fractured land and its divided people.")
    let movie2 = Movie(name: "Army of the Dead", image: #imageLiteral(resourceName: "armyofthedead"), date: "2021-05-14", description: "Following a zombie outbreak in Las Vegas, a group of mercenaries take the ultimate gamble: venturing into the quarantine zone to pull off the greatest heist ever attempted.")
    let movie3 = Movie(name: "Cruella", image: #imageLiteral(resourceName: "cruela"), date: "2021-05-26", description: "In 1970s London amidst the punk rock revolution, a young grifter named Estella is determined to make a name for herself with her designs. She befriends a pair of young thieves who appreciate her appetite for mischief, and together they are able to build a life for themselves on the London streets. One day, Estella’s flair for fashion catches the eye of the Baroness von Hellman, a fashion legend who is devastatingly chic and terrifyingly haute. But their relationship sets in motion a course of events and revelations that will cause Estella to embrace her wicked side and become the raucous, fashionable and revenge-bent Cruella.")
    temp_movie.append(movie1)
    temp_movie.append(movie2)
    temp_movie.append(movie3)
    temp_movie.append(movie1)
    temp_movie.append(movie2)
    temp_movie.append(movie3)
    temp_movie.append(movie2)
    temp_movie.append(movie3)
    temp_movie.append(movie1)
    temp_movie.append(movie2)
    return temp_movie
}
