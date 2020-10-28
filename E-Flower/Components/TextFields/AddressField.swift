//
//  AddressField.swift
//  E-Flower
//
//  Created by Christian Elijah on 2020-10-03.
//

import UIKit

class AddressField: UITextField {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        AddressSetup()
    }
    
    func AddressSetup() {
        self.textColor = .black
        self.backgroundColor = .white
        self.keyboardType = .default
        self.borderStyle = .roundedRect
        self.tintColor = .black
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = .zero
        self.layer.shadowOpacity = 0.3
        self.layer.shadowRadius = 8
        self.attributedPlaceholder = NSAttributedString(string: "Address:", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
    }
}
