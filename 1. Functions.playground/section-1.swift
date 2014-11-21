// Playground - noun: a place where people can play

import UIKit

/*** FUNZIONI ***/
/*
    - sintassi "func"
    - parametri
    - valore di ritorno
*/

func addNumbers(x : Int, y : Int) -> Int {
    return x + y
}

addNumbers(1, 2)
addNumbers(4, 5)

/*
    - nomi interni ed esterni (#)
    - visualizzazione sull'assistant
    - Parametri opzionali
*/

func degreesCos(gradi degrees : Double = 180) -> Double {
    
    let π = M_PI
    let d = degrees * π / 180
    let c = cos(d)

    return c
}
for i in 0..<180 {
    let c = degreesCos(gradi: Double(i)) // vedi assistant
}
degreesCos()    // parametro opzionale

/*
    - numero variabile di parametri
    - nested funcs
*/

func degreesCosVariadic(degrees: Double ...) -> [Double] {
    
    func degreesToRad(d : Double) -> Double {
        return d * M_PI / 180
    }
    
    var results = [Double]()
    for d in degrees {
        results.append(cos(/* o d * M_PI / 180.0 */ degreesToRad(d)))
    }
    
    return results
}
degreesCosVariadic(0.0, 90.0, 180.0, 360.0)

/*
    - parametri var e inout
*/

func printLower(/*o var*/inout str : String) {

    str = str.lowercaseString
    println(str)
}
var myString = "New York"
printLower(&myString)
myString

/*
    - "function" types
*/

var f : ((Double)->Double)? = nil
f = degreesCos
f!(180)







