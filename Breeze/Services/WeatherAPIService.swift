//
//  WeatherAPIService.swift
//  Breeze
//
//  Created by Lin Thit Khant on 10/6/23.
//

import Foundation
import Alamofire
import SwiftyJSON

struct WeatherAPIService: WeatherServiceProtocol {
    
    private let baseURL = "https://api.weatherapi.com/v1/"
    private let apiKey = "425bdd722a88499995e43942232209"
    
    func fetchWeather(for city: String, completion: @escaping (Result<CurrentWeather, APIError>) -> Void) {
        
        let url = "\(baseURL)current.json?key=\(apiKey)&q=\(city)&aqi=yes"
        
        AF.request(url).response(queue: .global(qos: .background)) { response in
            switch response.result {
            case .success(let success):
                guard let validData = success else {
                    completion(.failure(.invalidData))
                    return
                }
                let json = JSON(validData)
                let currentWeather = CurrentWeather(json: json)
                completion(.success(currentWeather))
            case .failure(let failure):
                completion(.failure(.requestFailed))
            }
        }
        
    }
    
}
