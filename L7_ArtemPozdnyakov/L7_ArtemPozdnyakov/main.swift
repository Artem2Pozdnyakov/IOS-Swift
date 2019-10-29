//
//  main.swift
//  L7_ArtemPozdnyakov
//  Created by admin on 29.10.2019.
//  Copyright © 2019 Artem Pozdnyakov. All rights reserved.
//

import Foundation

struct Films {
    var genre: String
    var year: Int
    var duration: Double
    var movie: Movie
}

enum SearchError: Error{
    case notItem
    case notConected
    case notAccess
}
enum UnknownError: Error {
    case unknown
}
struct Movie {
    var name: String
}

var connect = true
var access = true

class FilmsOnline {
    var collect = [Films(genre: "Horror", year: 2012, duration: 1.8, movie: Movie(name: "Dark")),
                   Films(genre: "Comedy", year: 2015, duration: 2.1, movie: Movie(name: "Smail")),
                   Films(genre: "Trailer", year: 2019, duration: 2.3,movie: Movie(name: "Sun"))]
    
    func searchFilms(name: String) throws -> Movie {
        guard let item = collect.first(where: {$0.movie.name == name}) else{
            throw SearchError.notItem
        }
        guard connect != false else{
            throw SearchError.notConected
        }
        guard access != false else{
            throw SearchError.notAccess
        }
        return item.movie
    }
}



var movi = FilmsOnline()
do{
    var result = try movi.searchFilms(name: "Darc")
}
catch SearchError.notAccess  {
        print("Нет доступа к фильму")
    
}
catch SearchError.notConected {
        print("Потеряна связь с сервером")
}
catch SearchError.notItem {
        print("Такого фильма нет в базе")
}
catch {
    print("Неизвестная ошибка")
}
    

