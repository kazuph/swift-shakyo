//
//  OpenWeatherMap.swift
//  testApp
//
//  Created by kazuph_org on 2015/01/11.
//  Copyright (c) 2015年 kazuph. All rights reserved.
//

import Foundation
import Alamofire

let urlString = "http://api.openweathermap.org/data/2.5/forecast"

class OpenWeatherMap {

    class func getJSON(completion:([String] -> Void)){
        var url = NSURL(string: urlString)!
        
        Alamofire.request(.GET, urlString, parameters: ["units": "metric", "q": "Tokyo"])
            .responseJSON { (request, response, jsonObject, error) in
                var json = JSON(jsonObject!)
                var list = json["list"]
                var results:[String] = []
                println(json)
                for var i = 0; i < list.count; i++ {
                    var dt_txt = list[i]["dt_txt"]
                    var weatherMain = list[i]["weather"][0]["main"]
                    var weatherDescription = list[i]["weather"][0]["description"]
                    var info = "\(dt_txt), \(weatherMain), \(weatherDescription)"
                    results.append(info)
                    
                }
                completion(results)
            }
    }
}