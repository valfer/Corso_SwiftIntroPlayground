// Playground - noun: a place where people can play

import UIKit

/*** CLOSURES ***/
/*
    - sintassi di base
*/

let myClosure = {
    (s : String) -> String in
    
    return s.lowercaseString
}

/*
    - la sort prende una closure come parametro, esempio con serie di shortcut
*/

// nota che se metto let mi da errore
var myArray = [1, 5, 2, 0, -4]

myArray.sort({
    (a : Int, b : Int) -> Bool in
    
    return a < b
})

// omesso tipo del closure
myArray.sort({(a, b) in
    
    return a < b
})

// se solo una riga posso omettere il return
myArray.sort({(a, b) in
    a < b
})

// notazione $N
myArray.sort({
    $0 < $1
})

// str definisce custom operator <
myArray.sort(<)

// se è l'ultimo parametro può andare fuori dalle parentesi
myArray.sort() {
    $0 < $1
}

// se è l'unico parametro posso addirittura tralasciare le parentesi
myArray.sort {
    $0 < $1
}

myArray

/*
    - il sistema fa una copia delle variabili nella closure se non le modifichiamo, altrimenti cattura una reference
    -   operazioni anche asincrone
    -   sono reference type (non value types)
    -   attenzione a reference cycle
*/


