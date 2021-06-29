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
    
    @IBOutlet weak var leftNum: UILabel!
    @IBOutlet weak var rightNum: UILabel!
    
    @IBOutlet weak var godShow: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        godShow.text = godSign
        leftNum.text = leftSign
        rightNum.text = rightSign
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
