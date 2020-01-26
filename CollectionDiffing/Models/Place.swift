//
//  Place.swift
//  CollectionDiffing
//
//  Created by Alfian Losari on 26/01/20.
//  Copyright © 2020 Alfian Losari. All rights reserved.
//

import Foundation

struct Place: Hashable {
    let uuid = UUID()
    let name: String
    let description: String
    let imageName: String
}

extension Array where Element == Place {
    
    static var osakaStubs: Self {
        return [
            Place(name: "Dottonburi", description: "Dotonbori is a canalside entertainment district popular with students and after-work drinkers who pack into small bars and izakaya taverns", imageName: "dottonburi"),
            Place(name: "Universal Studio", description: "Universal Studios Japan, located in Osaka, is one of six Universal Studios theme parks, owned and operated by USJ Co., Ltd., which is wholly owned by NBCUniversal", imageName: "osaka_universal")
        ]
    }
    
    static var kyotoStubs: Self {
        return [
            Place(name: "Fushimi Inari", description: "Fushimi Inari-taisha is the head shrine of the kami Inari, located in Fushimi-ku, Kyoto, Kyoto Prefecture, Japan", imageName: "fushimi_inari"),
            Place(name: "Arashiyama", description: "Arashiyama is a district on the western outskirts of Kyoto, Japan. It also refers to the mountain across the Ōi River, which forms a backdrop to the district", imageName: "arashiyama")
        ]
    }
    
    
    static var tokyoStubs: Self {
        return [
            Place(name: "Shinjuku", description: "Shinjuku City encompasses the buzzing clubs and karaoke rooms of neon-lit East Shinjuku and upscale hotel bars and restaurants in the Skyscraper District", imageName: "shinjuku"),
            Place(name: "Shibuya", description: "Shibuya is a special ward in Tokyo, Japan. A major commercial and business centre, it houses the two busiest railway stations in the world, Shinjuku Station and Shibuya Station", imageName: "shibuya")
        ]
    }
}
