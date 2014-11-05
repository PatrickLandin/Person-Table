//
//  Person.swift
//  Class3-HW-iOSF2
//
//  Created by Patrick Landin on 11/4/14.
//  Copyright (c) 2014 Patrick Landin. All rights reserved.
//

import Foundation

class Person {
    
    var name = "Patrick L. Landin"
    
    init (Name: String) {
        self.name = Name
    }
    
    func returnName() -> String {
        return name
    }
}