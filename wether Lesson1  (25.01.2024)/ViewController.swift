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
        let currentWeather = CurrentWeather.init(tempeture: -5.0, apparentTemperature: -10.0, icon: icon)
        updateUIWith(currentWeather: currentWeather)
        
        //       // let urlString = "https://google.apimetrics.xyz/get"
        //        let baseUrl = URL(string: "https://google.apimetrics.xyz/get")
        //        let fullUrl = URL(string: "PycURL/7.45.2 libcurl/7.58.0 OpenSSL/1.1.1 zlib/1.2.11 libidn2/2.0.4 libpsl/0.19.1 (+libidn2/2.0.4) nghttp2/1.30.0 librtmp/2.3", relativeTo: baseUrl)
        //
        //        let sessionConfiguretion = URLSessionConfiguration.default
        //        let session = URLSession(configuration: sessionConfiguretion)
        //
        //        let request = URLRequest(url: fullUrl!)
        //        let dataTask = session.dataTask(with: fullUrl!) { (data, response, error) in
        //        }
        //        dataTask.resume()
        //    }
        
        func  updateUIWith(currentWeather: CurrentWeather) {
            
            self.imageView.image = currentWeather.icon
            self.tempetureLabel.text = currentWeather.tempetureString
            self.feelsLikeLabel.text = currentWeather.appearentTempetureString
        }
    }
    
}
