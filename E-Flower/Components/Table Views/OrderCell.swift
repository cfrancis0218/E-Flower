//
//  OrderCell.swift
//  E-Flower
//
//  Created by Christian Elijah on 2020-10-01.
//

import UIKit

class OrderCell: UITableViewCell {
    
    var orderName = OrderLabelPlaced()
    var name = ""
    
    convenience init(name: String) {
        self.init()
        self.name = name
        
    }
    
    var orders: [Order]?
    var delegate: addOrders?
}

