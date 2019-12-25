//
//  ViewController.swift
//  Swift Practice
//
//  Created by Chaman Gurjar on 20/02/19.
//  Copyright © 2019 Chaman Gurjar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let practice = Practice(name: "Chaman")
        print("Practice Name : \(practice.name ?? "n/a")")
        
        let anotherPractice = practice
        anotherPractice.name = "Abhijeet"
        print("Another Practice Name : \(anotherPractice.name ?? "n/a")")
        print("Practice Name : \(practice.name ?? "n/a")")
        
        
        print("\n ************ After Setting Nil ********** \n")
        
        anotherPractice.name = nil
        print("Another Practice Name : \(anotherPractice.name ?? "Found nil")")
        print("Practice Name : \(practice.name ?? "Found nil")\n")
        
        
        var student = Student()
    }
    
    
}

