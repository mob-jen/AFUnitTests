//
//  DateFormatter.swift
//  UnitTestProject-AlamoFire
//
//  Created by Jennifer Hamilton on 7/26/16.
//  Copyright © 2016 Jennifer Hamilton. All rights reserved.
//

import Foundation

class DateFormatter {
    
    static let sharedInstance = DateFormatter()

    let dateFormatter = NSDateFormatter()
    
    func getDateFromFormat(format: String, string: String) -> NSDate? {
        dateFormatter.dateFormat = format
        return dateFormatter.dateFromString(string)
    }
}