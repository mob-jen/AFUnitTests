//
//  Weather.swift
//  UnitTestProject-AlamoFire
//
//  Created by Jennifer Hamilton on 7/26/16.
//  Copyright © 2016 Jennifer Hamilton. All rights reserved.
//

import Foundation

class Weather {
    
    var apparentTemperature: Double?
    var cloudCover: Double?
    var dewPoint: Double?
    var humidity: Double?
    var icon: String?
    var ozone: Double?
    var precipIntensity: Double?
    var precipProbability: Double?
    var pressure: Double?
    var summary: String?
    var temperature: Double?
    var time: NSDate
    var windBearing: Double?
    var windSpeed: Double?
    
    init(time: NSDate) {
        self.time = time
    }
}