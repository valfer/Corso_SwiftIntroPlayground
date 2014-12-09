// Playground - noun: a place where people can play

import UIKit

/*** Extension (per class, struct e enum) ***/

// SE NON AVESSIMO LE ENUM...
let Cuori = 0, Quadri = 1, Fiori = 1, Picche = 3
class Card {
    var seme : Int = Quadri
}
let myCard = Card()
myCard.seme = 56    // vorremmo bloccare questo

/*
    - sintassi e type inference
*/

enum Seme {
    case Cuori
    case Quadri
    case Fiori
    case Picche
}

class Card2 {
    var seme : Seme = .Quadri
}
let myCard2 = Card2()
myCard2.seme = .Cuori

/*
    - switch (check esaustivo del compiler)
*/

switch(myCard2.seme) {
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





