//
//  CheckoutButton.swift
//  E-Flower
//
//  Created by Christian Elijah on 2020-10-03.
//

import UIKit

class CheckoutButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        checkoutSetup()
    }
    
    func checkoutSetup() {
        self.backgroundColor = .black
        self.setTitle("Checkout", for: .normal)
        self.setTitleColor(.white, for: .normal)
        self.layer.cornerRadius = 25
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = .zero
        self.layer.shadowOpacity = 0.3
        self.layer.shadowRadius = 8
    }
}
