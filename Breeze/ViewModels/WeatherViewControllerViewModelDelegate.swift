//
//  WeatherViewControllerViewModelDelegate.swift
//  Breeze
//
//  Created by Lin Thit Khant on 10/10/23.
//

import Foundation

protocol WeatherViewControllerViewModelDelegate: AnyObject {
    func didFetchWeatherWithCurrentLocation()
    func didFailFetchWeatherWithCurrentLocation()
}
