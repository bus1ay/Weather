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
    
    lazy var weatherManager = APIWeatherManager(apiKey: "2a6d8e376a69c1ae07d4a52dd0c2dfdc")
    let coordinates = Coordinates(latitude: 55.801552, longitude: 37.765917)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        weatherManager.fetchCurrentWeatherWith(coordinates: coordinates) { (result) in
            switch result {
            case .Success(let currentWeather):
                self.updateUIWith(currentWeather: currentWeather)
            case .Failure(let error as NSError):
                let alertController = UIAlertController(title: "Unable to get data", message: "\(error.localizedDescription)", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alertController.addAction(okAction)
                self.present(alertController, animated: true, completion: nil)
            default: break
            }
        }
    }
        
        func  updateUIWith(currentWeather: CurrentWeather) {
            
            self.imageView.image = currentWeather.icon
            self.tempetureLabel.text = currentWeather.tempetureString
            self.feelsLikeLabel.text = currentWeather.appearentTempetureString
        }
    }
    
