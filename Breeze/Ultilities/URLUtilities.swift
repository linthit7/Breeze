//
//  URLUtilities.swift
//  Breeze
//
//  Created by Lin Thit Khant on 10/9/23.
//

import Foundation

struct URLUtilities {
    static func extractWeatherIconPath(from urlString: String) -> String? {
        guard let url = URL(string: urlString) else { return nil }
        let pathComponents = url.pathComponents
        guard pathComponents.count > 2 else { return nil }
        let lastTwo = pathComponents.suffix(2)
        return lastTwo.joined(separator: "/")
    }
}
