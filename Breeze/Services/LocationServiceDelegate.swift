//
//  LocationServiceDelegate.swift
//  Breeze
//
//  Created by Lin Thit Khant on 10/10/23.
//

import CoreLocation

protocol LocationServiceDelegate: AnyObject {
    func didUpdateLocation(_ location: CLLocation)
    func didFailWithError(_ error: Error)
}
