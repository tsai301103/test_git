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
    @IBOutlet weak var left_num: UILabel!
    @IBOutlet weak var right_num: UILabel!
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
    
    @IBAction func rollPress(_ sender: UIButton) {
        let leftRandom = Int.random(in: 0 ... 9)
        let rightRandom = Int.random(in: 0 ... 9)
        left_num.text = String(leftRandom)
        right_num.text = String(rightRandom)
        
        if leftRandom == rightRandom {
            print("有鏢")
        } else {
            print("無標")
        }
        
        let SecondVC = SecondViewController()
        self.present(SecondVC, animated: true, completion: nil)
    
    }
    

}

