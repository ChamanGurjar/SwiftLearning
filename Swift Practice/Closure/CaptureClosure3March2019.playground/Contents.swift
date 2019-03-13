/**
 Create By Chaman Gurjar 06-March-2019
 */

import UIKit

/*
 Closures Are Refrence Type
 */

var closureArray : [() -> ()] = []
var i = 0;

for _ in 1...5 {
    closureArray.append {
        print(i)
    }
    i = i + 1;
}

closureArray[0]()

// Although i'm passing 0 but it is printing 5 because it is holding reference of i and at last i = 5 at line no 14. So it is printing 5.


//******************************************************************************************//
// In this way we can capture the value.

var otherClosureArray: [() -> ()] = []
var j = 0

for _ in 1...5 {
    otherClosureArray.append { [j] in
        print(j)
    }
    j = j + 1
}

otherClosureArray[1]()
otherClosureArray[2]()
otherClosureArray[3]()
otherClosureArray[4]()

