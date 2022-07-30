//
//  Environment.swift
//  ByteCoin
//
//  Created by Jorge Avila on 2022-07-29.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

public enum Environment {
    enum Keys {
        static let apiKey = "API_KEY"
    }
    
    //Getting plist
    private static let infoDictionary: [String: Any] = {
        guard let dict = Bundle.main.infoDictionary else {
            fatalError("plist file not found")
        }
        return dict
    }()
    
    // Get apiKey
    static let apiKey: String = {
        guard let apiKeyString = Environment.infoDictionary[Keys.apiKey] as? String else {
            fatalError("API Key was not found in the plist")
        }
       return apiKeyString
    }()
}
