//
//  OrderScreen.swift
//  E-Flower
//
//  Created by Christian Elijah on 2020-10-01.
//

import UIKit

class OrderScreen: UIViewController, UITableViewDelegate, UITableViewDataSource, addOrders {
    
    var orderTableView = OrderTable()
    var orderButton = OrderButton()
    public var orders: [Order] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        tableSetup()
        tableViewConstraints()
        orderButtonStyle()
        orderButtonContstraints()

    }
    
    // MARK: Order Button
    func orderButtonStyle() {
        orderButton = OrderButton(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        orderButton.addTarget(self, action: #selector(checkoutDisplay), for: .touchUpInside)
        self.view.addSubview(orderButton)
    }
    
    func orderButtonContstraints() {
        orderButton.translatesAutoresizingMaskIntoConstraints = false
        orderButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 660).isActive = true
        orderButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        orderButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        orderButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -90).isActive = true
    }
    
    @objc func checkoutDisplay() {
        self.navigationController?.pushViewController(CheckoutScreen(), animated: true)
    }
    
    // MARK: Table Setup 1
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = orderTableView.dequeueReusableCell(withIdentifier: "OrderCell") as! OrderCell
        cell.orderName.text = orders[indexPath.row].item
        cell.delegate = self
        cell.orders = orders
        return cell
    }
    
    // MARK: Table Setup 2
    func tableSetup() {
        orderTableView.center = CGPoint(x: 0, y: 0)
        self.view.addSubview(orderTableView)
    }
    
    
    // MARK: Table Constraints
    func tableViewConstraints() {
        orderTableView.translatesAutoresizingMaskIntoConstraints = false
        orderTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        orderTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        orderTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        orderTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -175).isActive = true
    }
    
    func addOrder(name: String) {
        orders.append(Order(item: name))
        orderTableView.reloadData()
    }
}
