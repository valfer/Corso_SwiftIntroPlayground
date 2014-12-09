// Playground - noun: a place where people can play

import UIKit

/*** Struct ***/

/*
    - sintassi di base
    - proprietà
    - in generale utili come "data container" ma possono anche avere metodi
    - no ereditarietà
    - mutating
*/

struct Rectangle {
    
    var x: CGFloat
    var y: CGFloat
    var width: CGFloat
    var height: CGFloat
    
    func area() -> CGFloat {
        
        return width * height
    }
    
    mutating func setX(newX : CGFloat) {
        x = newX
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
    - array e dictionary in Swift sono struct (no class)
*/
let intDictionary = ["a":1, "b":4, "c":5]
var intDictionary2 = intDictionary
intDictionary2["b"] = 32
intDictionary["b"]      // nota il Some 4 (i dictionary tornano optionals)

/*
    - non posso modificare una proprietà di una struct let
*/
// r2.width = 101   // errore

/*
    - metodi e proprietà "static" (riferita alla struct, no a istanza)
*/











