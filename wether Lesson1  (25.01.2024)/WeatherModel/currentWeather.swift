//
//  currentWeather.swift
//  wether Lesson1  (25.01.2024)
//
//  Created by Игорь Буслаев on 26.01.2024.
//

import Foundation
import UIKit

struct CurrentWeather {
    let tempeture: Double
    let apparentTemperature: Double
    let icon: UIImage
}

extension CurrentWeather: JSONDecodable {
    init?(JSON: [String : AnyObject]) {
        guard let tempeture = JSON["tempeture"] as? Double,
              let apparentTemperature = JSON["apparentTemperature"] as? Double,
              let iconString = JSON["icon"] as? String else {
            return nil
        }
        
        let icon = WeatherIconManager(rawValue: iconString).image
        
        self.tempeture = tempeture
        self.apparentTemperature = apparentTemperature
        self.icon = icon
    }
}


extension CurrentWeather {
    var tempetureString: String {
        return "\(Int(tempeture))ºС"
    }
    
    var appearentTempetureString: String {
        return ("Ощущается как:  \(Int(apparentTemperature))ºС")
    }
    
    
}
