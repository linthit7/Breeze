//
//  HomeWeatherViewModel.swift
//  Breeze
//
//  Created by Lin Thit Khant on 10/9/23.
//

import Foundation
import UIKit

struct HomeWeatherViewModel {
    
    var name: String
    var temp_c: String
    var feelslike_c: String
    var icon: UIImage
    
    init(currentWeather: CurrentWeather) {
        self.name = currentWeather.location.name
        self.temp_c = String(currentWeather.current.temp_c)
        self.feelslike_c = "Feels like \(currentWeather.current.feelslike_c)"
        self.icon = UIImage(named: URLUtilities.extractWeatherIconPath(from: currentWeather.current.condition.icon)!)!
    }
}
