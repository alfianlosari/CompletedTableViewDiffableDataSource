//
//  Place.swift
//  CollectionDiffing
//
//  Created by Alfian Losari on 26/01/20.
//  Copyright © 2020 Alfian Losari. All rights reserved.
//

import Foundation

struct Place: Decodable, Hashable {
    let uuid: String
    let name: String
    let description: String
    let imageName: String
}

extension Array where Element == Place {
    
    static var osakaStubs: Self {
        try! Bundle.decodeJSONFromMainResources(filename: "osaka")
    }
    
    static var kyotoStubs: Self {
        try! Bundle.decodeJSONFromMainResources(filename: "kyoto")
    }

    static var tokyoStubs: Self {
        try! Bundle.decodeJSONFromMainResources(filename: "tokyo")
    }
}
