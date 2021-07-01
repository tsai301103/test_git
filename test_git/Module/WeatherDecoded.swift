//
//  WeatherRequest.swift
//  test_git
//
//  Created by 蔡孟典 on 2021/7/1.
//

import Foundation


struct WeatherDecoded:Codable{
    let main:StoreItem
    let name:String
}

struct StoreItem:Codable{
    let temp:Double
    let humidity:Double
}

//main.temp
