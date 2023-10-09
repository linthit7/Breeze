//
//  WeatherServiceProtocol.swift
//  Breeze
//
//  Created by Lin Thit Khant on 10/6/23.
//

import Foundation

protocol WeatherServiceProtocol {
    func fetchWeather(for city: String, completion: @escaping (Result<CurrentWeather, APIError>) -> Void)
}


