//
//  helper.swift
//  CoinPush
//
//  Created by Bijan Massoumi on 7/16/17.
//  Copyright © 2017 Goods and Services. All rights reserved.
//

import Foundation

class helper {
    
    static var labelDict: [String:String] = ["ETH": "Ethereum","BTC": "Bitcoin", "USD": "U.S Dollars", "EUR": "Euros"]
    
    static var symbolDict: [String: String] = ["USD" : "$",  "EUR" : "€", "BTC" :"Ƀ", "ETH" : "Ξ"]
    
    
    static func getCurrencyIdentifier(rawText: String) -> String{
        var returnExpression : String
        switch rawText {
            case "Ethereum (ETH)":
                returnExpression = "ETH"
            case "Bitcoin (BTC)":
                returnExpression = "BTC"
            case "🇺🇸 U.S Dollar (USD)":
                returnExpression = "USD"
            case "🇪🇺 Euro (EUR)":
                returnExpression = "EUR"
            
            default:
                fatalError("passed string had no match")
            
            }
        return returnExpression
    }
    
}