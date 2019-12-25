//
//  Person.swift
//  Swift Practice
//
//  Created by ChamanGurjar on 20/12/19.
//  Copyright © 2019 Chaman Gurjar. All rights reserved.
//

import Foundation

struct Student {
    var name = "Chaman"
//    var standard = EnrolledClass()
//    var Person = Student()
    
    var standard: EnrolledClass
    //var Person: Student
    
    init() {
        print("Initialising Person")
    }
}
