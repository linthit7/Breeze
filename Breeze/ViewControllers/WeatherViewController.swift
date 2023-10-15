//
//  WeatherViewController.swift
//  Breeze
//
//  Created by Lin Thit Khant on 10/5/23.
//

import UIKit
import CoreLocation

class WeatherViewController: UIViewController {
    
    weak var coordinator: WeatherCoordinator?
    
    var viewModel: WeatherViewControllerViewModel!
    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var weatherIconImageView: UIImageView!
    @IBOutlet weak var weatherTempLabel: UILabel!
    @IBOutlet weak var feelsLikeTempLabel: UILabel!
    @IBOutlet weak var weatherDataCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Weather"
        view.backgroundColor = AppColors.primaryBackgroundColor
        
        viewModel.delegate = self
        
        cityNameLabel.text = ""
        weatherIconImageView.image = nil
        weatherTempLabel.text = ""
        feelsLikeTempLabel.text = ""
        
        weatherDataCollectionView.backgroundColor = AppColors.primaryBackgroundColor
        
        weatherDataCollectionView.dataSource = self
        weatherDataCollectionView.delegate = self
        weatherDataCollectionView.register(UINib(nibName: WeatherDataCollectionViewCell.reuseIdentifier, bundle: nil), forCellWithReuseIdentifier: WeatherDataCollectionViewCell.reuseIdentifier)
        
    }
    
}

// MARK: WeatherViewControllerViewModelDelegate
extension WeatherViewController: WeatherViewControllerViewModelDelegate {
    func didFetchWeatherWithCurrentLocation() {
        DispatchQueue.main.async {
            self.cityNameLabel.text = self.viewModel.homeWeatherViewModel?.name
            self.weatherIconImageView.image = self.viewModel.homeWeatherViewModel?.icon
            self.weatherTempLabel.text = self.viewModel.homeWeatherViewModel?.temp_c
            self.feelsLikeTempLabel.text = self.viewModel.homeWeatherViewModel?.feelslike_c
            self.weatherDataCollectionView.reloadData()
        }
    }
    
    func didFailFetchWeatherWithCurrentLocation() {
        
    }
    
}

extension WeatherViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: WeatherDataCollectionViewCell.reuseIdentifier, for: indexPath) as? WeatherDataCollectionViewCell else {
            return UICollectionViewCell()
        }
        switch indexPath.item {
        case 0:
            cell.weatherDataTextView.text = viewModel.homeWeatherViewModel?.uv
        case 1:
            cell.weatherDataTextView.text = viewModel.homeWeatherViewModel?.feelslike_c
        case 2:
            cell.weatherDataTextView.text = viewModel.homeWeatherViewModel?.wind_mph
        case 3:
            cell.weatherDataTextView.text = viewModel.homeWeatherViewModel?.co
        default:
            cell.weatherDataTextView.text = "Unknown"
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 70)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize.zero
    }
    
}
