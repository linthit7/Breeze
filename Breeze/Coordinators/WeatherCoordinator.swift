//
//  WeatherCoordinator.swift
//  Breeze
//
//  Created by Lin Thit Khant on 10/5/23.
//

import Foundation
import UIKit

class WeatherCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let weatherVC = WeatherViewController()
        weatherVC.tabBarItem = UITabBarItem(title: "Weather", image: UIImage(systemName: "sun.min.fill"), tag: 0)
        weatherVC.coordinator = self
        navigationController.pushViewController(weatherVC, animated: false)
    }
}
