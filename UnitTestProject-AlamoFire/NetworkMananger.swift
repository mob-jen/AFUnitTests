//
//  NetworkMananger.swift
//  UnitTestProject-AlamoFire
//
//  Created by Jennifer Hamilton on 7/26/16.
//  Copyright © 2016 Jennifer Hamilton. All rights reserved.
//

import Foundation
import Alamofire

enum Result <T> {
    case Success(T)
    case Error(ErrorType)
}

class NetworkManager {
    static let sharedInstance = NetworkManager()
    private let baseURL = "https://api.forecast.io/forecast/"
    private let apiKey = "0c852834e560b691721ea810b93ff29c"
    
    func testAF() {
        let parameters = ["pratik": "cool", "mobelephants": "supercool"]
        Alamofire.request(.POST, "https://httpbin.org/post", parameters: parameters).responseJSON { (response) in
            print(response.request)
            print(response.response)
            print(response.data)
            print(response.result)
            
            if let JSON = response.result.value {
                print("JSON \(JSON)")
            }
        }
    }
    
    func getWeatherData(lat: String, lon: String, completion:(Result<NSObject>) -> () ) {
        Alamofire.request(.GET, "\(baseURL)\(apiKey)/\(lat),\(lon)").responseJSON { (response) in
            
//            if let currentlyJSON = (try? NSJSONSerialization.JSONObjectWithData(response.data!, options: .MutableLeaves) as? [String: AnyObject])??["currently"] {
//                print("NSJSONSerialized \(currentlyJSON)")
//                
//            }
            
            if let currentlyJSON = (response.result.value as? [String: AnyObject])?["currently"] {
                print("JSON \(currentlyJSON)")

                
//                let weather = Weather(time: NSDate(timeIntervalSince1970: currentlyJSON["time"]))
                
            }
        }
    }
}



/*
 currently =     {
 apparentTemperature = "70.97";
 cloudCover = "0.39";
 dewPoint = "66.81999999999999";
 humidity = "0.87";
 icon = "partly-cloudy-night";
 ozone = "312.54";
 precipIntensity = "0.0014";
 precipProbability = "0.03";
 precipType = rain;
 pressure = "1013.39";
 summary = "Partly Cloudy";
 temperature = "70.97";
 time = 1469545419;
 windBearing = 114;
 windSpeed = "10.62";
 };

 */