//
//  Movie.swift
//  favorite-movies
//
//  Created by Worapong Lekuthaiphan on 6/18/2560 BE.
//  Copyright © 2560 wl. All rights reserved.
//

import Foundation

class Movie {
    var id: String = ""
    var title: String = ""
    var year: String = ""
    var imageUrl: String = ""
    var plot: String = ""
    
    init(id: String, title: String,year: String, imageUrl: String, plot: String = ""){
        self.id = id
        self.title = title
        self.year = year
        self.imageUrl = imageUrl
        self.plot = plot
    }
    
} 
