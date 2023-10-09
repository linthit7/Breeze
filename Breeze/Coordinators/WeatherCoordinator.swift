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
        let weatherService = WeatherAPIService()
        let weatherViewModel = WeatherViewControllerViewModel(weatherService: weatherService)
        let weatherVC = WeatherViewController()
        weatherVC.viewModel = weatherViewModel
        weatherVC.tabBarItem = UITabBarItem(title: "Weather", image: UIImage(systemName: "sun.max.fill"), tag: 0)
        weatherVC.tabBarItem.image = UIImage(systemName: "sun.max")
        weatherVC.tabBarItem.selectedImage = UIImage(systemName: "sun.max.fill")
        weatherVC.coordinator = self
        navigationController.pushViewController(weatherVC, animated: false)
    }
}
