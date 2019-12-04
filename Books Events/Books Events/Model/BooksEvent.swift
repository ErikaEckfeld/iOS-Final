//
//  BooksEvent.swift
//  iOS Final
//
//  Created by Erika Eckfeld on 12/2/19.
//  Copyright © 2019 Erika Eckfeld. All rights reserved.
//

import Foundation

struct BooksEvent {
    let classification: Classification
    let title: String
    let description: String
    let date: Date
    //struct to hold the book club events
    //create two initializers, one that recieves classification of type...
    
    init(classification: Classification, title: String, description: String, date: Date){
        self.classification = classification
        self.title = title
        self.description = description
        self.date = date
    }
    
    init?(bookName: String, title: String, description: String, date: Date){
        if let classification = Classification(rawValue: bookName){
            self.init(classification: classification, title: title, description: description, date: date)
        } else{
            return nil
        }
    }
}
