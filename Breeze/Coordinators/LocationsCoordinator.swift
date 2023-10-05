//
//  LocationsCoordinator.swift
//  Breeze
//
//  Created by Lin Thit Khant on 10/5/23.
//

import Foundation
import UIKit

class LocationsCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let locationsVC = LocationsViewController()
        locationsVC.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "location.fill"), tag: 2)
        locationsVC.coordinator = self
        navigationController.pushViewController(locationsVC, animated: false)
    }
}
