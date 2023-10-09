//
//  WeatherViewControllerViewModel.swift
//  Breeze
//
//  Created by Lin Thit Khant on 10/9/23.
//

import Foundation

class WeatherViewControllerViewModel {
    
    private var weatherService: WeatherServiceProtocol
    var homeWeatherViewModel: HomeWeatherViewModel?
    var error: APIError?
    
    init(weatherService: WeatherServiceProtocol) {
        self.weatherService = weatherService
    }
    
    func fetchWeather(for city: String, completion: @escaping () -> Void) {
        
        weatherService.fetchWeather(for: city) { [weak self] result in
            switch result {
            case .success(let weather):
                self?.homeWeatherViewModel = HomeWeatherViewModel(currentWeather: weather)
            case .failure(let error):
                self?.error = error
            }
            completion()
        }
    }
    
}
