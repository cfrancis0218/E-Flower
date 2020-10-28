//
//  FlowerSearch.swift
//  E-Flower
//
//  Created by Christian Elijah on 2020-10-02.
//

import UIKit

class FlowerSearch: UISearchBar {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        flowerSearchBar()
    }
    
    func flowerSearchBar() {
        self.placeholder = "Search..."
        self.searchBarStyle = .minimal
        self.searchTextField.textColor = .black
    }
}
