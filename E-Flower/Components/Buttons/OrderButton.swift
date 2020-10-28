//
//  OrderButton.swift
//  E-Flower
//
//  Created by Christian Elijah on 2020-10-02.
//

import UIKit

class OrderButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        orderButton()
    }
    
    func orderButton() {
        self.backgroundColor = .black
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 8
        self.layer.shadowOpacity = 0.2
        self.layer.cornerRadius = 25
        self.setTitle("Order", for: .normal)
        self.setTitleColor(.white, for: .normal)
    }
}
