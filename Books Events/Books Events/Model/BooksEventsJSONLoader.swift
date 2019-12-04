//
//  BooksEventsJSONLoader.swift
//  iOS Final
//
//  Created by Erika Eckfeld on 12/2/19.
//  Copyright © 2019 Erika Eckfeld. All rights reserved.
//

import Foundation

class BooksEventsJSONLoader{
    
    class func load(fileName: String) -> [BooksEvent] {
        var events = [BooksEvent]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)){
            events = BooksEventsJSONParser.parse(data)
        }
        
        return events
    }
    
}
