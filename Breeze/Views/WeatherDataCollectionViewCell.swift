//
//  WeatherDataCollectionViewCell.swift
//  Breeze
//
//  Created by Lin Thit Khant on 10/12/23.
//

import UIKit

class WeatherDataCollectionViewCell: UICollectionViewCell {

    static let reuseIdentifier = String(describing: WeatherDataCollectionViewCell.self)
    
    @IBOutlet weak var weatherDataTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = AppColors.secondaryBackgroundColor
        layer.cornerRadius = 12
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        weatherDataTextView.text = ""
    }

}
