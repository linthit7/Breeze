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
    var wind_mph: String
    var uv: String
    var co: String
    var text: String
    
    init(currentWeather: CurrentWeather) {
        self.name = currentWeather.location.name
        self.temp_c = "\(currentWeather.current.temp_c)°C"
        self.feelslike_c = "Feels like \(currentWeather.current.feelslike_c)°C"
        self.icon = UIImage(named: URLUtilities.extractWeatherIconPath(from: currentWeather.current.condition.icon)!)!
        self.wind_mph = "\(currentWeather.current.wind_mph) mph blowing currently"
        self.uv = "UV index of \(currentWeather.current.uv) currently"
        self.co = "\(currentWeather.current.air_quality.co) index of co infused in air"
        self.text = "\(currentWeather.current.condition.text)"
    }
}
