//
//  AddOrderScreen.swift
//  E-Flower
//
//  Created by Christian Elijah on 2020-10-05.
//

import UIKit

protocol AddOrders {
    func addOrder(name: String)
}

class AddOrderScreen: UIViewController {
    
    var addOrders = AddOrderField()
    var addButton = OrderButton()
    var delegate: AddOrders?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white

        addField()
        orderButtonStyle()
        orderButtonContstraints()
        toolBarSetup()
        
        addButton.addTarget(self, action: #selector(addSwitch), for: .touchUpInside)
    }
    
    func addField() {
        
        addOrders.center = CGPoint(x: 0, y: 0)
        addOrders = AddOrderField(frame: CGRect(x: 0, y: 0, width: 300, height: 20))
        self.view.addSubview(addOrders)
        
        addOrders.translatesAutoresizingMaskIntoConstraints = false
        addOrders.topAnchor.constraint(equalTo: view.topAnchor, constant: 500).isActive = true
        addOrders.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        addOrders.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        addOrders.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -250).isActive = true
    }
    
    func orderButtonStyle() {
        addButton.center = CGPoint(x: 0, y: 0)
        addButton = OrderButton(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        self.view.addSubview(addButton)
    }
    
    func orderButtonContstraints() {
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 730).isActive = true
        addButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        addButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        addButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
    }
    
    @objc func addSwitch() {
        if addOrders.text != "" {
            delegate?.addOrder(name: addOrders.text!)
            navigationController?.pushViewController(OrderScreen(), animated: true)
        }
    }
    
    func toolBarSetup() {
        
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 320, height: 50))
        doneToolbar.barStyle = .default
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneAction))
        
        let items = NSMutableArray()
        items.addObjects(from: [flexSpace, done])
        
        doneToolbar.items = (items as! [UIBarButtonItem])
        doneToolbar.sizeToFit()
        
        self.addOrders.inputAccessoryView = doneToolbar
        
    }
    @objc func doneAction() {
        self.addOrders.resignFirstResponder()
    }
    
}
