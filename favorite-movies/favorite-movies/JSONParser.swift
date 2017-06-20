//
//  JSONParser.swift
//  favorite-movies
//
//  Created by Worapong Lekuthaiphan on 6/20/17.
//  Copyright © 2017 wl. All rights reserved.
//

import Foundation

class JSONParser {
    static func parse (data: Data) -> [String: AnyObject]?{
        let options = JSONSerialization.ReadingOptions()
        do{
            let json = try JSONSerialization.jsonObject(with: data, options: options)
            as? [String: AnyObject]
            
            return json!
        }catch(let parseError){
            print("There was error parsing JSON: \"\(parseError.localizedDescription)\"")
        }
        return nil
    }
}
