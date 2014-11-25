// Playground - noun: a place where people can play

import UIKit

/*** Struct ***/

/*
    - sintassi di base
    - proprietà
    - in generale utili come "data container" ma possono anche avere metodi

*/

struct Rectangle {
    
    var x: CGFloat
    var y: CGFloat
    var width: CGFloat
    var height: CGFloat
    
    func area() -> CGFloat {
        
        return width * height
    }
}

/*
    - initializer creato automaticamente (questo non è vero per le classi)
*/
let r = Rectangle(x: 0, y: 0, width: 20, height: 20)
r.area()

/*
    - sono value type
*/
var r2 = r
r2.width = 40
r.area()

/*
    - array e dictionary in Swift sono struct
*/
let intDictionary = ["a":1, "b":4, "c":5]
var intDictionary2 = intDictionary
intDictionary2["b"] = 32
intDictionary["b"]      // nota il Some 4 (i dictionary tornano optionals)

/*
    - non posso modificare una proprietà di una struct let
*/
// scommenta per vedere errore
// r2.width = 101

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

/*
    - metodi di struct -> static
    - mutating
*/











