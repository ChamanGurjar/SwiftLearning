import UIKit

/// Closure type 1
var closureOne : (Int, Int) -> Int = { (numberOne: Int, numberTwo: Int) in
    return numberOne * numberTwo
}

closureOne(3, 5)

/// Closure type 2  - Without Explicit Type Declaration
var closureTwo  = {
    (numberOne: Int, numberTwo: Int) in
    return numberOne * numberTwo
}

closureTwo(4, 6)

/// Closure type 3  - Without return keyword
var closureThree  = { (numberOne: Int, numberTwo: Int) in
    numberOne * numberTwo
}

closureThree(5, 7)

/// Closure type 4
var closureFour: (Int, Int) -> Int  = { $0 * $1 }
closureFour(6, 8)


var closureOneWithString: () -> String = { () in
    print("If you are using return keyword in closure, you can also add print statement.")
    return "Hi this is simple print statement with closure one."
}
var closureTwoWithString: () -> String = { () in
    "Hi this is simple print statement with closure two."
}
var closureThreeWithString: () -> String = { "Hi this is simple print statement with closure three." }
var closureFourWithString = { "Hi this is simple print statement with closure four." }
closureOneWithString()
print(closureFourWithString())
