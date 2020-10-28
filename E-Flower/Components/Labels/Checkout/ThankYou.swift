//
//  ThankYou.swift
//  E-Flower
//
//  Created by Christian Elijah on 2020-10-04.
//

import UIKit

class ThankYou: UILabel {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        labelSetup()
    }
    
    func labelSetup() {
        self.textAlignment = .center
        self.textColor = .lightGray
        self.font = .systemFont(ofSize: 32, weight: .semibold)
        self.text = "Thank You For Purchasing"
        self.numberOfLines = 2
    }
}
