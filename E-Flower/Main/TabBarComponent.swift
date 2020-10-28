//
//  MainVC.swift
//  E-Flower
//
//  Created by Christian Elijah on 2020-10-01.
//

import UIKit

class TabBarComponent: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // MARK: Screen View
        screenSetup()
        searchView()
    }
    // MARK: Screen Setup
    func screenSetup() {
        
        // MARK: Navigation Controller
        self.title = "FlowerShop"
        _ = navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(searchView))
        navigationItem.rightBarButtonItem?.tintColor = .white
        navigationItem.rightBarButtonItem?.style = .done
        
        // MARK: Colors
        view.backgroundColor = .white

        // Main Screen
        let firstController = MainScreen()
        firstController.tabBarItem = UITabBarItem(title: "Shop", image: UIImage(systemName: "bag.fill"), tag: 0)

        // Order Screen
        let secondController = OrderScreen()
        secondController.tabBarItem = UITabBarItem(title: "Order", image: UIImage(systemName: "cart"), tag: 1)
        
        // List Items
        let tabBarItemList = [firstController, secondController]
        viewControllers = tabBarItemList
    }
    
    func tabBarController(_ tabBarController: UITabBarController, animationControllerForTransitionFrom fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return nil
    }
    
    @objc func searchView() {
        self.navigationController?.pushViewController(SearchScreen(), animated: true)
    }
    
}
