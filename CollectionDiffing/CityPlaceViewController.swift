//
//  ViewController.swift
//  CollectionDiffing
//
//  Created by Alfian Losari on 11/01/20.
//  Copyright © 2020 Alfian Losari. All rights reserved.
//

import UIKit

class CityPlaceTableViewDiffableDataSource: UITableViewDiffableDataSource<City, Place> {
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return snapshot().sectionIdentifiers[section].rawValue.uppercased()
    }
}

class CityPlaceViewController: UITableViewController {
    
    var diffableDataSource: CityPlaceTableViewDiffableDataSource!
    var citiesWithPlaces = City.stubCitiesWithPlaces
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationItems()
        setupTableView()
        applySnapshot()
    }
    
    // MARK: SETUP

    private func setupTableView() {
        tableView.register(UINib(nibName: "PlaceTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
        diffableDataSource = CityPlaceTableViewDiffableDataSource(tableView: tableView) { (tableView, indexPath, place) -> UITableViewCell? in
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! PlaceTableViewCell
            cell.setup(with: place)
            return cell
        }
    }
    
    private func setupNavigationItems() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Shuffle", style: .done, target: self, action: #selector(shuffleTapped(_:)))
    }
    
    // MARK: Helper Method
    
    private func applySnapshot() {
        var snapshot = NSDiffableDataSourceSnapshot<City, Place>()
        citiesWithPlaces.forEach { (landscapes) in
            let (landscape, places) = landscapes
            snapshot.appendSections([landscape])
            snapshot.appendItems(places, toSection: landscape)
        }
        diffableDataSource.apply(snapshot, animatingDifferences: true)
    }
    
    
    // MARK: ACTION
    
    @objc private func shuffleTapped(_ sender: Any) {
        self.citiesWithPlaces = citiesWithPlaces.map {
            ($0.city, $0.places.shuffled())
        }.shuffled()
        
        applySnapshot()
    }

}
