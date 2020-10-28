//
//  CheckoutScreen.swift
//  E-Flower
//
//  Created by Christian Elijah on 2020-10-03.
//

import UIKit

class CheckoutScreen: UIViewController {

    var checkoutLabel = CheckoutLabel()
    var nameField = NameField()
    var lastName = LastNameField()
    var email = EmailField()
    var address = AddressField()
    var card = CardField()
    var cvv = CVVField()
    var checkout = CheckoutButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: SETUP
        screenSetup()
        labelSetup()
        labelPlacement()
        nameSetup()
        nameConstraints()
        lastnameSetup()
        lastnameConstraints()
        EmailSetup()
        EmailConstraints()
        AddressSetup()
        AddressConstraints()
        CardSetup()
        CardConstraints()
        CVVSetup()
        CVVConstraints()
        checkoutButton()
        checkoutConstraints()
        toolBarSetup()
        
        // MARK: CHECKOUT
        checkout.addTarget(self, action: #selector(checkoutPage), for: .touchUpInside)
    }
    
    func screenSetup() {
        view.backgroundColor = .white
        
    }
    
    @objc func checkoutPage() {
        self.navigationController?.pushViewController(OrderPlacedScreen(), animated: true)
    }
    
    func labelSetup() {
        checkoutLabel.center = CGPoint(x: 0, y: 0)
        checkoutLabel = CheckoutLabel(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        self.view.addSubview(checkoutLabel)
    }
    
    func labelPlacement() {
        checkoutLabel.translatesAutoresizingMaskIntoConstraints = false
        checkoutLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        checkoutLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        checkoutLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -180).isActive = true
        checkoutLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -575).isActive = true
    }
    
    func nameSetup() {
        nameField.center = CGPoint(x: 0, y: 0)
        nameField.inputAccessoryView = UIView()
        nameField = NameField(frame: CGRect(x: 10, y: 10, width: 100, height: 20))
        self.view.addSubview(nameField)
    }
    
    func nameConstraints() {
        nameField.translatesAutoresizingMaskIntoConstraints = false
        nameField.topAnchor.constraint(equalTo: view.topAnchor, constant: 170).isActive = true
        nameField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        nameField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -200).isActive = true
        nameField.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -590).isActive = true
    }
    
    func lastnameSetup() {
        lastName.center = CGPoint(x: 0, y: 0)
        lastName.inputAccessoryView = UIView()
        lastName = LastNameField(frame: CGRect(x: 10, y: 10, width: 100, height: 20))
        self.view.addSubview(lastName)
    }
    
    func lastnameConstraints() {
        lastName.translatesAutoresizingMaskIntoConstraints = false
        lastName.topAnchor.constraint(equalTo: view.topAnchor, constant: 170).isActive = true
        lastName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200).isActive = true
        lastName.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        lastName.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -590).isActive = true
    }
    
    func EmailSetup() {
        email.center = CGPoint(x: 0, y: 0)
        email.inputAccessoryView = UIView()
        email = EmailField(frame: CGRect(x: 10, y: 10, width: 100, height: 20))
        self.view.addSubview(email)
    }
    
    func EmailConstraints() {
        email.translatesAutoresizingMaskIntoConstraints = false
        email.topAnchor.constraint(equalTo: view.topAnchor, constant: 250).isActive = true
        email.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        email.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        email.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -500).isActive = true
    }
    
    func AddressSetup() {
        address.center = CGPoint(x: 0, y: 0)
        address.inputAccessoryView = UIView()
        address = AddressField(frame: CGRect(x: 10, y: 10, width: 100, height: 20))
        self.view.addSubview(address)
    }
    
    func AddressConstraints() {
        address.translatesAutoresizingMaskIntoConstraints = false
        address.topAnchor.constraint(equalTo: view.topAnchor, constant: 330).isActive = true
        address.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        address.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        address.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -420).isActive = true
    }
    
    func CardSetup() {
        card.center = CGPoint(x: 0, y: 0)
        card.inputAccessoryView = UIView()
        card = CardField(frame: CGRect(x: 10, y: 10, width: 100, height: 20))
        self.view.addSubview(card)
    }
    
    func CardConstraints() {
        card.translatesAutoresizingMaskIntoConstraints = false
        card.topAnchor.constraint(equalTo: view.topAnchor, constant: 410).isActive = true
        card.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        card.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -150).isActive = true
        card.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -340).isActive = true
    }
    
    func CVVSetup() {
        cvv.center = CGPoint(x: 0, y: 0)
        cvv.inputAccessoryView = UIView()
        cvv = CVVField(frame: CGRect(x: 10, y: 10, width: 100, height: 20))
        self.view.addSubview(cvv)
    }
    
    func CVVConstraints() {
        cvv.translatesAutoresizingMaskIntoConstraints = false
        cvv.topAnchor.constraint(equalTo: view.topAnchor, constant: 410).isActive = true
        cvv.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 240).isActive = true
        cvv.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        cvv.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -340).isActive = true
    }
    
    func checkoutButton() {
        checkout.center = CGPoint(x: 0, y: 0)
        checkout = CheckoutButton(frame: CGRect(x: 0, y: 0, width: 100, height: 20))
        self.view.addSubview(checkout)
    }
    
    func checkoutConstraints() {
        checkout.translatesAutoresizingMaskIntoConstraints = false
        checkout.topAnchor.constraint(equalTo: view.topAnchor, constant: 700).isActive = true
        checkout.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        checkout.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        checkout.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
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
        
        self.nameField.inputAccessoryView = doneToolbar
        self.lastName.inputAccessoryView = doneToolbar
        self.email.inputAccessoryView = doneToolbar
        self.address.inputAccessoryView = doneToolbar
        self.card.inputAccessoryView = doneToolbar
        self.cvv.inputAccessoryView = doneToolbar
        
    }
    @objc func doneAction() {
        self.nameField.resignFirstResponder()
        self.lastName.resignFirstResponder()
        self.email.resignFirstResponder()
        self.address.resignFirstResponder()
        self.card.resignFirstResponder()
        self.cvv.resignFirstResponder()
    }

}
