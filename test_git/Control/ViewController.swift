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
    @IBOutlet weak var GodImage: UIImageView!
    
    var godSignVC = ""
    var godName = "jesus"
    var times = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func press(_ sender: Any) {
        print(number.currentTitle!)
    }

    @IBAction func sliding(_ sender: UISlider) {
        let imageNumber = sender.value.rounded()
        aguilife_num.text=String(imageNumber)
        
        switch imageNumber {
        case 1:
            GodImage.image = UIImage(named: "jesus")
            godName = "jesus"
        case 2:
            GodImage.image = UIImage(named: "paul")
            godName = "paul"
        default:
            GodImage.image = UIImage(named: "peter")
            godName = "peter"
        }

    }
    
    @IBAction func rollPress(_ sender: UIButton) {
        let leftRandom = Int.random(in: 0 ... 1)
        let rightRandom = Int.random(in: 0 ... 1)
        left_num.text = String(leftRandom)
        right_num.text = String(rightRandom)
        
        if leftRandom == 1 && rightRandom == 1 {
            godSignVC = "有筊"
        } else if leftRandom == 0 && rightRandom == 0{
            godSignVC = "笑筊"
        } else {
            godSignVC = "無筊"
        }
        times += 1
        //擲三次 才會跳到下個頁面
        while times>2 {
            times = 0
            self.performSegue(withIdentifier: "goSecondView", sender: self)
            
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as! SecondViewController
        print(secondVC)
        secondVC.godSign = godSignVC
        secondVC.leftSign = left_num.text!
        secondVC.rightSign = right_num.text!
        secondVC.godImageSelect = godName
    }
    
    @IBAction func weatherRequest(_ sender: UIButton) {
        let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=London&units=metric&appid=73ec0f689377a5484daa315c8988db03")!

        let task = URLSession.shared.dataTask(with: url) {(data_here, response, error) in
//            guard let data = data else { return }
                    //先建立解碼器
                    let decoder = JSONDecoder()
                    decoder.dateDecodingStrategy = .iso8601
                    //
                    if let safeData = data_here {
                        do {
                            let decodedData = try decoder.decode(WeatherDecoded.self, from: safeData)
                            print(decodedData.main.humidity)
                            print(decodedData.main.temp)
                            print(decodedData.name)
                        } catch {
                            print(error)
                        }
                    } else {
                        print("error")
                    }
                }.resume()
            
//       print(String(data: data, encoding: .utf8)!)
           
//        do{
//            let jsonData = try JSONSerialization.jsonObject(with: data, options: []) as? [String : Any]
//            print(jsonData!["main"])
////            main.temp
//            }catch{ print("erroMsg") }

            
        }
    

//        task.resume()
        
    
    
    
    

}

