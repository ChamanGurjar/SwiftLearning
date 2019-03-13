/**
 Create By Chaman Gurjar 07-March-2019
 */

import UIKit

// @escaping
// If the closure can be executed/return after the function finishes, need to mark @escaping.

//Scenario 1
var closureBlock: [() -> Void] = []

func withClosure(closure: @escaping () -> Void) {
    closureBlock.append(closure)
}
let value: () -> Void =  {
    print("Hi Chaman")
}
withClosure(closure: value)
withClosure(closure: value)

//If the closure can be executed/return after the function finishes, need to mark @escaping
closureBlock[0]()

//Scenario 2
import Foundation

func networkingWithClosure(closure: @escaping () -> Void) {
    DispatchQueue.global().async {
        closure()
    }
    print("\nnetworkingWithClosure execution done...")
}

//You will see print("\nnetworkingWithClosure execution done...") run first mean execution has return from the function, but we want to exute it later so need to mark it @escaping.
networkingWithClosure {
    for _ in 0...10 {
        print("Downloading data asynchronously...")
    }
} 

// ************************************************************************************************************************************************************ //

//  @autoclosure

func checkIdCard(hasCard: () -> Bool) {
    if hasCard() {
        print("You have and ID Card...")
    }
}

checkIdCard { () -> Bool in
    return true
}
checkIdCard(hasCard: { return true })
checkIdCard(hasCard: {true })
checkIdCard{ true }

//But always you need to use {} these brackets.

//Now lets write same function with autoclosure
func checkIDCard(hasCard: @autoclosure () -> Bool) {
    if hasCard() {
        print("You have and ID Card...")
    }
}

checkIDCard(hasCard: true)

class Human {
    let name = "Chaman Gurjar"
    
    lazy var greetings: String = {
        print("Sending greeting to Mr. \(self.name)")
        return "Hello Mr. \(self.name)" // There may be retain cycle as we are using self. But there is not, because we declared it lazy and lazy by default is Non-Escaping. So don't need to be worry about retain cyle if using lazy.
    }()
    
    deinit {
        print("Human class gone ")
    }
}

var chaman: Human? = Human()
chaman?.greetings
chaman = nil





