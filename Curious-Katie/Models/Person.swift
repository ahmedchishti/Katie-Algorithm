//
//  Person.swift
//  Curious-Katie
//
//  Created by Ahmed Chishti on 12/10/20.
//

import Foundation

struct Person: Equatable, Hashable {
    
    var name: String
    var hometown: String
    var age: String
    var interest: [String]
    
    init(name: String, hometown: String, age: String, interest: [String]) {
        self.name = name
        self.hometown = hometown
        self.age = age
        self.interest = interest
    }
    
}

