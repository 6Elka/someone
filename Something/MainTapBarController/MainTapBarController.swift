//
//  MainTapBarController.swift
//  Something
//
//  Created by Artem on 29.01.2023.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        setUp()
    }
}
//MARK: - Private Init
extension MainTabBarController {
    private func setUp() {
        let buy = createItem(viewController: BuyProductViewController(), title: "Купить", image: "laptopcomputer")
        let forYou = createItem(viewController: ForYouViewController(), title: "Для вас", image: "person.crop.circle")
        let search = createItem(viewController: SearchViewController(), title: "Поиск", image: "magnifyingglass")
        let bag = createItem(viewController: BagViewController(), title: "Корзина", image: "bag")
        
        viewControllers = [buy, forYou, search, bag]
    }
    
    private func createItem(viewController: UIViewController, title: String, image: String) -> UINavigationController {
        let item = UITabBarItem(title: title, image: UIImage(systemName: image), tag: 0)
        
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem = item
        return navController
    }
}

