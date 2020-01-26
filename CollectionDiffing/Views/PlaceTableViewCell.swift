//
//  PlaceTableViewCell.swift
//  CollectionDiffing
//
//  Created by Alfian Losari on 11/01/20.
//  Copyright © 2020 Alfian Losari. All rights reserved.
//

import UIKit

class PlaceTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var placeImageView: UIImageView!
    
    func setup(with place: Place) {
        titleLabel.text = place.name
        subtitleLabel.text = place.description
        placeImageView.image = UIImage(named: place.imageName)
    }
}
