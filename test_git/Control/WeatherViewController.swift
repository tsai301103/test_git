//
//  WeatherViewController.swift
//  test_git
//
//  Created by 蔡孟典 on 2021/7/1.
//

import UIKit

class WeatherViewController: UIViewController {
    
    var temp = ""
    var place = ""
    var humidity = ""
    
    @IBOutlet weak var placeOutlet: UILabel!
    @IBOutlet weak var humidOutlet: UILabel!
    @IBOutlet weak var tempOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        placeOutlet.text = place
        humidOutlet.text = humidity
        tempOutlet.text = temp
        
    }
    


}
