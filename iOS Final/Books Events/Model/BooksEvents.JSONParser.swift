//
//  BooksEvents.JSONParser.swift
//  iOS Final
//
//  Created by Erika Eckfeld on 12/2/19.
//  Copyright © 2019 Erika Eckfeld. All rights reserved.
//

import Foundation

class BooksEventsJSONParser{
    
    static let dateFormatter = DateFormatter()
    
    //function called to parse the JSON file
    class func parse(_ data: Data) -> [BooksEvent] {
        var booksEvents = [BooksEvent]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok" {
                
            if let events = root["events"] as? [Any]{
                for event in events{
                    if let event = event as? [String: String] {
                        if let bookName = event["classification"],
                            let title = event["title"],
                            let description = event["description"],
                            let dateString = event["date"],
                            let date = dateFormatter.date(from: dateString) {
                            
                            if let booksEvent = BooksEvent(bookName: bookName, title: title, description: description, date: date){
                                booksEvents.append(booksEvent)
                            }
                            
                        }
                    }
                //dictionary containing keys that are strings w values that are any
                }
            }
                
        }
        
        return booksEvents
    }
}
