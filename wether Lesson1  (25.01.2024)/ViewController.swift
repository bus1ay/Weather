//
//  ViewController.swift
//  wether Lesson1  (25.01.2024)
//
//  Created by Игорь Буслаев on 25.01.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var tempetureLabel: UILabel!
    
    @IBOutlet weak var feelsLikeLabel: UILabel!
    
    @IBOutlet weak var refreshButton: UIButton!
    
    
    @IBAction func refreshButtonTaped(_ sender: UIButton) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let icon = WeatherIconManager.Rain.image
        let currentWeather = CurrentWeather.init(tempeture: -5.0, appearentTempeture: -10.0, icon: icon)
        updateUIWith(currentWeather: currentWeather)
    }

    func  updateUIWith(currentWeather: CurrentWeather) {
        
    }
}

