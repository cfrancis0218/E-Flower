//
//  OrderLabelPlaced.swift
//  E-Flower
//
//  Created by Christian Elijah on 2020-10-05.
//

import UIKit

class OrderLabelPlaced: UILabel {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        labelSetup()
    }
    
    func labelSetup() {
        self.text = ""
        self.textAlignment = .center
        self.textColor = .black
    }
}
