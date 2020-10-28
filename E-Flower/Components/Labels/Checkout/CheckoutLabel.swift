//
//  CheckoutLabel.swift
//  E-Flower
//
//  Created by Christian Elijah on 2020-10-03.
//

import UIKit

class CheckoutLabel: UILabel {
    
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
        self.font = .systemFont(ofSize: 40, weight: .semibold)
        self.text = "Checkout"
    }
}
