// Playground - noun: a place where people can play

import UIKit

/*** Classes ***/

/*
    - OOP metodi e proprietà
    - sintassi swifti di proprietà e metodi
    - self
    - nomi esterni ai metodi (primo parametro escluso)
    - custom init
*/
class Team {
    
    // proprietà
    var players:[String]/* = []*/
    
    // metodi
    func addPlayer(player : String) {

        self.players.append(player)
        // players.append(item)  // anche senza self
    }
    
    func removePlayer(index : Int) {
        // qui ci vorrebbe controllo del boundary
        self.players.removeAtIndex(index)
    }

    /*
    - parametri dopo il primo -> nomi esterni (diverso da functions)
    */
    func addPlayer(player: String, altezza: Double) {
        
        self.players.append("\(player): \(altezza)")
    }
    
/*
    - custom init
    - nome esterno anche al primo
    - in init devo inizializzare tutte le proprietà che non sono optionals
    - a questo punto devo dichiarare anche init() se voglio che funzioni anche ShoppingList()
*/
    init(players:[String]) {
        self.players = players
    }
    init() {
        self.players = []
    }
}

let team = Team()
team.addPlayer("Mario")
team.players

/*
    - parametri dopo il primo -> nomi esterni (diverso da functions)
*/
team.addPlayer("Paolo", altezza: 1.98)
team.players

/*
    - custom init
*/
let team2 = Team(players:["Mario", "Paolo"])
team2

/*
    - subclass (sintassi :)
    - nuove proprietà
    - init
    - override di metodo
    - convenience init
*/
class FootballTeam : Team {
    
    var mediaGol : Int
    
    override init() {
        mediaGol = 0        // le mie prima di super
        super.init()
        self.players = []   // le ereditate dopo super
    }
    
    convenience init(mediaGol : Int) {
        self.init()
        self.mediaGol = mediaGol
    }

    override func addPlayer(player : String, altezza: Double) {

        if altezza > 1.95 {
            players.append("\(player): POSSIBILE PORTIERE \(altezza)")
        } else {
            super.addPlayer(player, altezza: altezza)
        }
    }
}






