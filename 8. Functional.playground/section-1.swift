// Playground - noun: a place where people can play

import UIKit

/*
    - generics
*/
func swapInt(inout a : Int, inout b : Int) {
    let temp = a
    a = b
    b = temp
}
var a = 3, b = 5
swapInt(&a, &b)
a
b
func swapString(inout a : String, inout b : String) {
    let temp = a
    a = b
    b = temp
}
func swap<A>(inout a : A, inout b : A) {
    let temp = a
    a = b
    b = temp
}

/*
    - enum per valore di ritorno
    // BUG COMPILATORE
    enum Result<A> {
        case Value(A)
        case Error(NSError)
    }
*/
enum Result {
    case Value(NSData)
    case Error(NSError)
}

/*
    - currying
*/
func print(a : String)(b : String) {
    
    println(a + b)
}
let printA = print("hello")
printA(b:"World")

/*
    - Monad
*/
infix operator >>> { associativity left precedence 150 }

func >>><A, B>(o: A?, f: A -> B?) -> B? {
    
    if let _o = o {
        
        return f(_o)
        
    } else {
        
        return .None
        
    }
}
"ciao" >>> printA


/*
    - fmap
*/
infix operator <^> { associativity left }

func <^><A, B>(f: A -> B, a: A?) -> B? {
    if let x = a {
        return f(x)
    } else {
        return .None
    }
}

func upper(inStr : String) -> String? {
    return inStr.uppercaseString
}

printA <^> "ciao" >>> upper



