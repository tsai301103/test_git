//
//  ViewController.swift
//  test_git
//
//  Created by 蔡孟典 on 2021/6/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var number: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func press(_ sender: Any) {
        
        print(number.currentTitle!)
        
    }
    

}

