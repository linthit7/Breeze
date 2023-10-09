//
//  APIError.swift
//  Breeze
//
//  Created by Lin Thit Khant on 10/6/23.
//

import Foundation

enum APIError: Error {
    case requestFailed
    case jsonParsingFailed
    case invalidData
}
