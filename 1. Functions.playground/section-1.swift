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
    - func(coseno) visualizzazione sull'assistant
    - nome esterno ugule all'interno (#gradi)
    - nomi interni ed esterni diversi (gradi g)
    - Parametri opzionali (default)
*/

func calcCoseno(gradi g : Double = 180) -> Double {
    
    let π = M_PI
    let d = g * π / 180
    let c = cos(d)

    return c
}
for i in 0..<180 {
    let c = calcCoseno(gradi: Double(i)) // vedi assistant
}
calcCoseno()    // parametro opzionale

/*
    - numero variabile di parametri
*/

func degreesCosVariadic(degrees: Double ...) -> [Double] {
    
    var results = [Double]()
    for d in degrees {
        results.append(calcCoseno(gradi: d))
    }
    
    return results
}
degreesCosVariadic(0.0, 90.0, 180.0, 360.0)

/*
    - parametri var e inout
    - nested funcs
*/

func printLower(/*o var*/inout str : String) {

    /*func lower(inStr : String) -> String {
        return inStr.lowercaseString
    }*/
    
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
f = calcCoseno
f!(180)







