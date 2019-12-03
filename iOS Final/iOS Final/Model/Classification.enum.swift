//
//  Classification.enum.swift
//  iOS Final
//
//  Created by Erika Eckfeld on 12/2/19.
//  Copyright © 2019 Erika Eckfeld. All rights reserved.
//

import UIKit

enum Classification: String {
    case action
    case comedy
    case mystery
    case romance
    case scifi
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "icon")
    }
}
