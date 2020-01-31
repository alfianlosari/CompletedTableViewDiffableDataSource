//
//  Landscape.swift
//  CollectionDiffing
//
//  Created by Alfian Losari on 11/01/20.
//  Copyright © 2020 Alfian Losari. All rights reserved.
//

import Foundation

enum City: String {
    case kyoto
    case osaka
    case tokyo
}

extension City {
    
    static var stubCitiesWithPlaces: [(city: City, places: [Place])] {
        [
            (.osaka, .osakaStubs),
            (.kyoto, .kyotoStubs),
            (.tokyo, .tokyoStubs)
        ]
    }
}
