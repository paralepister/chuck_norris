//
//  Model.swift
//  chuck_norris
//
//  Created by Anna on 16/01/2020.
//  Copyright © 2020 Anna. All rights reserved.
//http://api.icndb.com/jokes/random

import UIKit

class Model: NSObject {
    
    func loadJoke() -> String {
        var returnJoke: String = ""
        
        let url = NSURL(string: "http://api.icndb.com/jokes/random")!
        let data = NSData(contentsOfURL: url)
        
        do {
            let dict = try NSJSONSerialisation.JSONObjectWAithData(data!, options: NSJSONReadingOptions.AllowFragments) as! NSDictionary
            print(dict)
        } catch 
        
        return returnJoke
    }
}
