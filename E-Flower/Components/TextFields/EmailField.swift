//
//  EmailField.swift
//  E-Flower
//
//  Created by Christian Elijah on 2020-10-03.
//

import UIKit

class EmailField: UITextField {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        EmailSetup()
    }
    
    func EmailSetup() {
        self.textColor = .black
        self.keyboardType = .emailAddress
        self.backgroundColor = .white
        self.borderStyle = .roundedRect
        self.tintColor = .black
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = .zero
        self.layer.shadowOpacity = 0.3
        self.layer.shadowRadius = 8
        self.attributedPlaceholder = NSAttributedString(string: "Email:", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
    }
}
