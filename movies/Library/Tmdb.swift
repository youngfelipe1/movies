//
//  Tmdb.swift
//  movies
//
//  Created by Felipe Young on 6/7/21.
//

import Foundation



struct Response: Codable{
    let results : MDBData
    let status : String
}

struct MDBData : Codable{
    let budget : Int
    let overview : String
    let release_date : String
    
    func getOverview()->String{
        return overview
    }
}

func getMovieData(movie_id: Int){
    let url = "https://api.themoviedb.org/3/movie/" + "\(movie_id)" + "?api_key=f5b6abcb07a14d121bdd075f9134a831&language=en-US"
    URLSession.shared.dataTask(with: URL(string: url)! , completionHandler: {data, response , error in
        guard let data=data , error == nil else{
            print("There was a problem")
            return
        }
        var result : MDBData
        do{
            result = try JSONDecoder().decode(MDBData.self , from: data)
            // Here I get the object with the properties I want
            // The thing is I couldn't find a way to make "refresh the view"
        }
        catch{
            print("Error")
        }
    }).resume()
}
