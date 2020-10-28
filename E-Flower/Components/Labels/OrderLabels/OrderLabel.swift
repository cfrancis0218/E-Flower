//
//  OrderLabel.swift
//  E-Flower
//
//  Created by Christian Elijah on 2020-10-02.
//

import UIKit

class OrderLabel: UILabel {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        labelSetup()
    }
    
    func labelSetup() {
        self.textAlignment = .center
        self.textColor = .black
        self.font = .systemFont(ofSize: 26, weight: .semibold)
        self.text = "1x Bouquet"
    }
}
