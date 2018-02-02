//
//  Property.swift
//  ThirdAssessmentMei
//
//  Created by Ying Mei Lum on 02/02/2018.
//  Copyright © 2018 Ying Mei Lum. All rights reserved.
//

import Foundation
import UIKit

class Property {
    var name : String = "Enter Property Name"
    var price  : String = "Enter Property Price"
    var location : String = "Enter Property Location"
    
    //blank initialiser - no values are assigned
    init(){}
    
    //custom initialiser with parameters
    init(name: String, price: String, location: String) {
        self.name = name
        self.price = price
        self.location = location
        //        self.image = image
        //if cannot get image using image name use default value
       
    }
}
