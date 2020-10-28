//
//  BuyButton.swift
//  E-Flower
//
//  Created by Christian Elijah on 2020-10-02.
//

import UIKit

class BuyButton: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buyButtonSetup()
    }
    
    func buyButtonSetup() {
        self.backgroundColor = .black
        self.setTitle("Order", for: .normal)
        self.setTitleColor(.white, for: .normal)
        self.layer.cornerRadius = 25
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = .zero
        self.layer.shadowOpacity = 0.3
        self.layer.shadowRadius = 8
    }
}
