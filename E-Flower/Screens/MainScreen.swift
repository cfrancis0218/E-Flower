//
//  MainScreen.swift
//  E-Flower
//
//  Created by Christian Elijah on 2020-10-01.
//

import UIKit

class MainScreen: UIViewController {
    
    var topView = TopView()
    var image = UIImageView()
    var orderButton = BuyButton()
    var orderButton2 = BuyButton()
    var orderButton3 = BuyButton()
    var label = OrderLabel()
    var label2 = OrderLabel2()
    var label3 = OrderLabel3()
    public var orderList: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: UIView
        viewSetup()
        topViewConstraints()
        
        // MARK: ImageSetup
        imageSetup()
        imageConstraints()
        
        orderButtonSetup()
        orderButtonConstraints()
        
        orderButtonSetup2()
        orderButtonConstraints2()
        
        orderButtonSetup3()
        orderButtonConstraints3()
        
        // MARK: Label Setup
        labelSetup()
        labelConstraints()
        
        labelSetup2()
        labelConstraints2()
        
        labelSetup3()
        labelConstraints3()
    }
    
    func addOrderToList() {
        orderButton.addTarget(self, action: #selector(addOne), for: .touchUpInside)
        orderButton2.addTarget(self, action: #selector(addTwo), for: .touchUpInside)
        orderButton2.addTarget(self, action: #selector(addThree), for: .touchUpInside)
    }
    
    @objc func addOne() {
        orderList.append("1x Bouquet")
    }
    
    @objc func addTwo() {
        orderList.append("2x Bouquet")
    }
    
    @objc func addThree() {
        orderList.append("3x Bouquet")
    }
    
    func labelSetup() {
        label.center = CGPoint(x: 0, y: 0)
        label = OrderLabel(frame: CGRect(x: 0, y: 0, width: 100, height: 20))
        self.view.addSubview(label)
    }
    
    func labelConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 450).isActive = true
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -200).isActive = true
        label.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300).isActive = true
    }
    
    func labelSetup2() {
        label2.center = CGPoint(x: 0, y: 0)
        label2 = OrderLabel2(frame: CGRect(x: 0, y: 0, width: 100, height: 20))
        self.view.addSubview(label2)
    }
    
    func labelConstraints2() {
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.topAnchor.constraint(equalTo: view.topAnchor, constant: 525).isActive = true
        label2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        label2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -200).isActive = true
        label2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -225).isActive = true
    }
    
    func labelSetup3() {
        label3.center = CGPoint(x: 0, y: 0)
        label3 = OrderLabel3(frame: CGRect(x: 0, y: 0, width: 100, height: 20))
        self.view.addSubview(label3)
    }
    
    func labelConstraints3() {
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.topAnchor.constraint(equalTo: view.topAnchor, constant: 600).isActive = true
        label3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        label3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -200).isActive = true
        label3.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150).isActive = true
    }
    
    func orderButtonSetup() {
        orderButton.center = CGPoint(x: 0, y: 0)
        orderButton = BuyButton(frame: CGRect(x: 0, y: 0, width: 50, height: 10))
        self.view.addSubview(orderButton)
    }
    
    func orderButtonConstraints() {
        orderButton.translatesAutoresizingMaskIntoConstraints = false
        orderButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 450).isActive = true
        orderButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 230).isActive = true
        orderButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        orderButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300).isActive = true
    }
    
    func orderButtonSetup2() {
        orderButton2.center = CGPoint(x: 0, y: 0)
        orderButton2 = BuyButton(frame: CGRect(x: 0, y: 0, width: 50, height: 10))
        self.view.addSubview(orderButton2)
    }
    
    func orderButtonConstraints2() {
        orderButton2.translatesAutoresizingMaskIntoConstraints = false
        orderButton2.topAnchor.constraint(equalTo: view.topAnchor, constant: 525).isActive = true
        orderButton2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 230).isActive = true
        orderButton2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        orderButton2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -225).isActive = true
    }
    
    func orderButtonSetup3() {
        orderButton3.center = CGPoint(x: 0, y: 0)
        orderButton3 = BuyButton(frame: CGRect(x: 0, y: 0, width: 50, height: 10))
        self.view.addSubview(orderButton3)
    }
    
    func orderButtonConstraints3() {
        orderButton3.translatesAutoresizingMaskIntoConstraints = false
        orderButton3.topAnchor.constraint(equalTo: view.topAnchor, constant: 600).isActive = true
        orderButton3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 230).isActive = true
        orderButton3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        orderButton3.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150).isActive = true
    }
    
    func imageSetup() {
        image = UIImageView(image: #imageLiteral(resourceName: "flower-pot-transparent-background-png-image-101577115276xculpj8baz"))
        self.view.addSubview(image)
    }
    
    func imageConstraints() {
        image.translatesAutoresizingMaskIntoConstraints = false
        image.topAnchor.constraint(equalTo: view.topAnchor, constant: 90).isActive = true
        image.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        image.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        image.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -375).isActive = true
    }
    
    
    func viewSetup() {
        topView.center = CGPoint(x: 0, y: 0)
        topView = TopView(frame: CGRect(x: 0, y: 0, width: 500, height: 300))
        self.view.addSubview(topView)
    }
    
    func topViewConstraints() {
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.topAnchor.constraint(equalTo: view.topAnchor, constant: 65).isActive = true
        topView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -375).isActive = true
    }
    
    
}
