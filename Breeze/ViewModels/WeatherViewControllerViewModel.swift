//
//  WeatherViewControllerViewModel.swift
//  Breeze
//
//  Created by Lin Thit Khant on 10/9/23.
//

import Foundation
import CoreLocation

class WeatherViewControllerViewModel {
    
    weak var delegate: WeatherViewControllerViewModelDelegate?
    
    private var weatherService: WeatherServiceProtocol
    private var locationService: LocationService
    var homeWeatherViewModel: HomeWeatherViewModel?
    var error: APIError?
    var completedRequest = 0

    init(weatherService: WeatherServiceProtocol, locationService: LocationService) {
        self.weatherService = weatherService
        self.locationService = locationService
        self.locationService.delegate = self
        self.locationService.startUpdatingLocation()
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

extension WeatherViewControllerViewModel: LocationServiceDelegate {
    
    func didUpdateLocation(_ location: CLLocation) {
        locationService.stopUpdatingLocation()
        weatherService.fetchWeather(for: "\(location.coordinate.latitude),\(location.coordinate.longitude)") { [weak self] result in
            switch result {
            case .success(let weather):
                self?.homeWeatherViewModel = HomeWeatherViewModel(currentWeather: weather)
                self?.delegate?.didFetchWeatherWithCurrentLocation()
                self?.completedRequest += 1
            case .failure(let error):
                self?.error = error
                self?.delegate?.didFailFetchWeatherWithCurrentLocation()
                self?.locationService.startUpdatingLocation()
            }
        }
    }
    
    func didFailWithError(_ error: Error) {
        
    }
    
}
