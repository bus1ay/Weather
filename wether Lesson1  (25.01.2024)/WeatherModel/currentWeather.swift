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
    let appearentTempeture: Double
    let icon: UIImage
}


extension CurrentWeather {
    var tempetureString: String {
        return "\(Int(tempeture))ºС"
    }
    
    var appearentTempetureString: String {
        return ("Ощущается как:  \(Int(appearentTempeture))ºС")
    }
    
    
}
