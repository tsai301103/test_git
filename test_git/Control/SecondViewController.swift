//
//  SecondViewController.swift
//  test_git
//
//  Created by 蔡孟典 on 2021/6/28.
//

import UIKit

class SecondViewController: UIViewController {
    
    var godSign = ""
    var leftSign = ""
    var rightSign = ""
    var godImageSelect = "paul"
    
    @IBOutlet weak var godImage: UIImageView!
    @IBOutlet weak var leftNum: UILabel!
    @IBOutlet weak var rightNum: UILabel!
    
    @IBOutlet weak var godShow: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        godShow.text = godSign
        leftNum.text = leftSign
        rightNum.text = rightSign
        // Do any additional setup after loading the view.
        godImage.image = UIImage(named: godImageSelect)
    }
    
    @IBAction func retry(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
        
    }
    
    
   
}
