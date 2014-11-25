// Playground - noun: a place where people can play

import Cocoa

/*
- lazy property
- proprietà calcolate
- anche con set (newValue implicito)
*/

struct Person {
    
    var name: String
    var lastName: String
    lazy var addresses = [String]()			// deve essere var
    var fullName : String {
        get {
            return "\(self.name) \(self.lastName)"
        }
        set /*anche (newFullName)*/ {
            let str = (newValue as NSString).componentsSeparatedByString(" ")
            name = str[0] as String
            lastName = str[1] as String
        }
    }
    
    // di default (se non mutating) i metodi non possono modificare self
    mutating func resetNames() {
        
        name = ""
        lastName = ""
    }
}

var smartR = Person(name: "Mario", lastName: "Rossi", addresses: ["Roma", "Milano"])
smartR.fullName
smartR.fullName = "Carlo Verdi"
smartR

