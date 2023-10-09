//
//  MapsCoordinator.swift
//  Breeze
//
//  Created by Lin Thit Khant on 10/5/23.
//

import Foundation
import UIKit

class MapsCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let mapsVC = MapsViewController()
        mapsVC.tabBarItem = UITabBarItem(title: "Maps", image: UIImage(systemName: "globe.asia.australia"), tag: 1)
        mapsVC.tabBarItem.image = UIImage(systemName: "globe.asia.australia")
        mapsVC.tabBarItem.selectedImage = UIImage(systemName: "globe.asia.australia.fill")
        mapsVC.coordinator = self
        navigationController.pushViewController(mapsVC, animated: false)
    }
}
