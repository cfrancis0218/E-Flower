//
//  OrderPlacedScreen.swift
//  E-Flower
//
//  Created by Christian Elijah on 2020-10-03.
//

import UIKit

class OrderPlacedScreen: UIViewController {
    
    var label = ThankYou()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        labelSetup()
        labelConstraints()
    }
    
    func labelSetup() {
        label.center = CGPoint(x: 0, y: 0)
        label = ThankYou(frame: CGRect(x: 0, y: 0, width: 500, height: 100))
        self.view.addSubview(label)
    }
    
    func labelConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        label.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150).isActive = true
    }
}
