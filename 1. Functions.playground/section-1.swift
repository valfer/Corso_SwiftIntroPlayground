// Playground - noun: a place where people can play

import UIKit

/*** FUNZIONI ***/
/*
    - sintassi "func"
    - parametri
    - valore di ritorno
    - nomi interni ed esterni (#)
    - Parametri opzionali
*/

func degreesCos(gradi degrees : Double = 180) -> Double {
    
    let d = degrees * M_PI / 180.0
    let c = cos(d)

    return c
}
for i in 0...90 {
    let c = degreesCos(gradi: Double(i)) // vedi assistant
}
degreesCos()    // parametro opzionale

/*
    - numero variabile di parametri
*/

func degreesCosVariadic(degrees: Double ...) -> [Double] {
    
    var results = [Double]()
    for d in degrees {
        results.append(cos(d * M_PI / 180.0))
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
    - nested functions
*/

func getValue(inStr : String) -> String {
    
    func parse(inStr : String) -> [String] {
        
        return (inStr as NSString).componentsSeparatedByString("=") as [String]
    }
    
    let parsedStr = parse(inStr)
    
    return parsedStr[1]  // boundary check needed
}
getValue("name=valerio")

/*
    - "function" types
*/

var f : ((String)->(String))? = nil
f = getValue
f!("a=11")







