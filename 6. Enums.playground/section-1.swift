// Playground - noun: a place where people can play

import UIKit

/*** Extension (per class, struct e enum) ***/

/*
    - sintassi e type inference
*/

enum Seme {
    case Cuori
    case Quadri
    case Fiori
    case Picche
}

var myCardType = Seme.Cuori
// ma anche
var myCardType2 : Seme = .Cuori

/*
    - switch (check esaustivo del compiler)
*/

switch(myCardType) {
    case .Cuori:
        println("Cuori")
    case .Quadri:
        println("Quadri")
    case .Fiori:
        println("Fiori")
    case .Picche:
        println("Picche")
}

/*
    - backing values, enum with raw type (not required in switch)
*/

enum Ruolo : Int {
    case Portiere = 1
    case Due, Tre, Quattro, Cinque, Sei, Sette, Otto, Nove, Dieci
    case Centravanti
}
let value = Ruolo.Quattro.rawValue
let ruolo = Ruolo(rawValue: 80)  // optional (80 non esiste)

/*
    - associated values
*/
enum Ruolo2 {
    case Portiere
    case Num(Int)
    case Centravanti

    /*
        - methods
    */
    func descr() -> String {
        switch(self) {
        case .Portiere:
            return "Portiere"
        case .Num(let n):
            return "Numero \(n)"
        case .Centravanti:
            return "Centravanti"
        }
    }

    /*
        - default
    */
    init() {
        self = .Portiere
    }


}
let ruolo2 = Ruolo2.Num(4)
ruolo2.descr()
let ruolo3 = Ruolo2()





