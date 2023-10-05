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
        
    }
}
