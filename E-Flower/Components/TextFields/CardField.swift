//
//  CardField.swift
//  E-Flower
//
//  Created by Christian Elijah on 2020-10-03.
//

import UIKit

class CardField: UITextField {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        CardSetup()
    }
    
    func CardSetup() {

        self.textColor = .black
        self.keyboardType = .numberPad
        self.backgroundColor = .white
        self.borderStyle = .roundedRect
        self.tintColor = .black
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = .zero
        self.layer.shadowOpacity = 0.3
        self.layer.shadowRadius = 8
        self.attributedPlaceholder = NSAttributedString(string: "Card Number:", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
    }
}
