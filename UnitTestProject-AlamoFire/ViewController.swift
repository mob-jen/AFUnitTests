//
//  ViewController.swift
//  UnitTestProject-AlamoFire
//
//  Created by Jennifer Hamilton on 7/26/16.
//  Copyright © 2016 Jennifer Hamilton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let networkManager = NetworkManager.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        networkManager.getWeatherData("35.68333", lon: "145.68333", completion: { (result) in
        } )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

