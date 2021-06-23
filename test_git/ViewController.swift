//
//  ViewController.swift
//  test_git
//
//  Created by 蔡孟典 on 2021/6/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var number: UIButton!
    @IBOutlet weak var aguilife: UISlider!
    @IBOutlet weak var aguilife_num: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func press(_ sender: Any) {
        print(number.currentTitle!)
        
    }
 
    @IBAction func sliding(_ sender: UISlider) {
        aguilife_num.text=String(sender.value.rounded())
        
      
        
    }
    
    

}

