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
        
        var practice = Practice(name: "Chaman")
        print("Practice Name : \(practice.name ?? nil)")
        
        var anotherPractice = practice
        anotherPractice.name = "Abhijeet"
        print("Another Practice Name : \(anotherPractice.name ?? nil)")
        print("Practice Name : \(practice.name ?? nil)")
        
        
        print("After Setting Nil")
        anotherPractice.name = nil
        print("Another Practice Name : \(anotherPractice.name)")
        print("Practice Name : \(practice.name)")
        
    }


}

