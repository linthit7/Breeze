//
//  WeatherViewController.swift
//  Breeze
//
//  Created by Lin Thit Khant on 10/5/23.
//

import UIKit

class WeatherViewController: UIViewController {

    weak var coordinator: WeatherCoordinator?
    
    var viewModel: WeatherViewControllerViewModel!
    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var weatherIconImageView: UIImageView!
    @IBOutlet weak var weatherTempLabel: UILabel!
    @IBOutlet weak var feelsLikeTempLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Weather"
        view.backgroundColor = AppColors.primaryBackgroundColor
        
        viewModel.fetchWeather(for: "Bago") {
            DispatchQueue.main.async {
                self.cityNameLabel.text = self.viewModel.homeWeatherViewModel?.name
                self.weatherIconImageView.image = self.viewModel.homeWeatherViewModel?.icon
                self.weatherTempLabel.text = self.viewModel.homeWeatherViewModel?.temp_c
                self.feelsLikeTempLabel.text = self.viewModel.homeWeatherViewModel?.feelslike_c
            }
        }
    }

}
