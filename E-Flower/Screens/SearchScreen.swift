//
//  SearchScreen.swift
//  E-Flower
//
//  Created by Christian Elijah on 2020-10-02.
//

import UIKit

class SearchScreen: UIViewController {

    var flowerSearchBar = FlowerSearch()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        screenSetup()
        searchSetup()
        searchBarConstraints()
    }
    
    func screenSetup() {
        view.backgroundColor = .white
    }
    
    func searchSetup() {
        flowerSearchBar.center = CGPoint(x: 0, y: 0)
        self.view.addSubview(flowerSearchBar)
    }
    
    func searchBarConstraints() {
        flowerSearchBar.translatesAutoresizingMaskIntoConstraints = false
        flowerSearchBar.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        flowerSearchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        flowerSearchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        flowerSearchBar.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -650).isActive = true
    }

}
