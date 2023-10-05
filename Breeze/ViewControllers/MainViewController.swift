//
//  MainViewController.swift
//  Breeze
//
//  Created by Lin Thit Khant on 10/5/23.
//

import UIKit

class MainViewController: UITabBarController {

    let weatherCoordinator = WeatherCoordinator(navigationController: UINavigationController())
    
    let mapsCoordinator = MapsCoordinator(navigationController: UINavigationController())
    
    let locationsCoordinator = LocationsCoordinator(navigationController: UINavigationController())

    override func viewDidLoad() {
        super.viewDidLoad()

        weatherCoordinator.start()
        mapsCoordinator.start()
        locationsCoordinator.start()
        viewControllers = [weatherCoordinator.navigationController, mapsCoordinator.navigationController, locationsCoordinator.navigationController]
    }

}
