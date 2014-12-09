// Playground - noun: a place where people can play

import UIKit

/*** Extension (per class, struct e enum) ***/

/*
    - sintassi
    - esempio metodo
    - solo proprietà calcolate
    - esempio map
*/

extension String {
    
    // var length : Int // questa no, errore

    var length : Int  {  // questa calcolata ok
        
        get {
            return countElements(self)
        }
    }
    
    func underscoreString() -> [String] {
        
        let arr = Array(self)
        let newArr = arr.map {(c: Character) -> String in
            return "_" + c
        }
        
        return newArr
    }
}

let a = "Calcolatore🐧🐨🐪"
a.underscoreString()
a.length


/*
    - filter
*/

// creo array di 10 numeri a caso
var arr = [Int]()
for i in 1...10 {
    let x = Int(arc4random() % 100)
    arr.append(x)
}

// filtro solo i pari
let evens = arr.filter { (number) in
number % 2 == 0
}
for ev in evens {
    let x = ev
}

/*
    - reduce
*/

// li sommo
let seed : Int = 0
let result : Int = evens.reduce(seed) { (incrementalTotal : Int, n : Int) in
    incrementalTotal + n
}
result






