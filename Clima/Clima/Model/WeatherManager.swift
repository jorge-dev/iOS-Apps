//
//  WeatherManager.swift
//  Clima
//
//  Created by Jorge Avila on 2022-07-10.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation
import UIKit

protocol WeatherManagerDelegate {
    func didUpdateWeather(_ weatherManager:WeatherManager, weather: WeatherModel)
    func didFailWithError(error:Error)
}

struct WeatherManager {
    private let url = "https://api.openweathermap.org/data/2.5/weather?&appid=05d26a856cc9acf4026b4d3175cbcde3&units=metric"
    var delegate: WeatherManagerDelegate?
    
    func fetchWeather(city: String){
        let urlString = "\(url)&q=\(city)"
        performRequest(with: urlString)
        
    }
    
    func performRequest(with urlString:String){
        // 1. Create a URL
        if let url = URL(string: urlString){
            // 2. Create a URL Session
            let session = URLSession(configuration: .default)
            // 3. Create a data task
            let task = session.dataTask(with: url) {(data,response,error) in
                if error != nil{
                    delegate?.didFailWithError(error: error!)
                    return
                }
                
                if let selfData = data{
                    if let weather = self.parseJson(selfData){
                        self.delegate?.didUpdateWeather(self, weather:weather)
                    }
                }
            }
            // 4. Start the data task
            task.resume()
        }
        
    }
    
    func parseJson(_ wData:Data) -> WeatherModel? {
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode(WeatherData.self, from: wData)
            let id = decodedData.weather[0].id
            let temp = decodedData.main.temp
            let name = decodedData.name
            
            let weather = WeatherModel(conditionId: id, cityName: name, temperature: temp)
            
            return weather
        }catch{
            delegate?.didFailWithError(error: error)
            return nil
        }
        
        
    }
    
    
    
}
