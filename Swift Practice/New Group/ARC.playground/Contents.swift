import UIKit

class Passport {
   weak var human: Human?
    let citizenship: String
    
    init(citizenship: String) {
        self.citizenship = citizenship
    }
    
    deinit {
        print("Passport class deallocated for \(citizenship)")
    }
}

class Human {
    var passport: Passport?
    let name: String
    
    init(_ name: String) {
        self.name = name
    }
    
    deinit {
        print("Human class deallocated for \(name)")
    }
}

Passport(citizenship: "Indian")  // Object created and deallocated.
let passport = Passport(citizenship: "Indian") // Object created and but not deallocated.

Human("Chaman") // Object created and deallocated.
let human = Human("Chaman") // Object created and but not deallocated.

// Now we can deallocate these type of objects by making them optional and setting these nil

// 1. Creating optional properties
var indian: Passport? = Passport(citizenship: "Indian")
var chaman: Human? = Human("Chaman")

//2. Setting them nil so that they are deallocated.
indian = nil
chaman = nil


//**************************************//
// But if we set like this and then set both objects nil, deinit method doesn't run.
indian?.human = chaman
chaman?.passport = indian

//deinit method don't run
chaman = nil
indian = nil


//And the reason is that a by setting nil connection between object and Human is removed, but between Human and passport is not removed
/*
var chaman ->  Human    like -> this is removed, but Human to Passport (|) is not removed.
                | |
var india -> Passport  same as above.
 */

//**************************************//
// To break this retain cycle/ Memory leak, to deallocate the object we need to set 'human' property in Passport class week.
/*
class Passport {
   weak var human: Human?

}
 */

