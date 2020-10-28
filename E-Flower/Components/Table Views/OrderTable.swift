//
//  OrderTable.swift
//  E-Flower
//
//  Created by Christian Elijah on 2020-10-01.
//

import UIKit

class OrderTable: UITableView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: .plain)
        tableSetupStyle()
    }
    
    func tableSetupStyle() {
        self.backgroundColor = .white
    }
}
