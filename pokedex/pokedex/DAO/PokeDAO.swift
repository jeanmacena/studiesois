//
//  PokeDAO.swift
//  pokedex
//
//  Created by Jean Macena on 13/07/20.
//  Copyright © 2020 Jean Macena. All rights reserved.
//

import UIKit

class PokeDAO: NSObject {
    
    func getAllPokemon () -> Array<Pokemon>{
        let poke1 = Pokemon(name: "Bulbasaur", imagePath: "1.png", skill: "Grama e Veneno", hp: "40", attack: "10", defense: "12", kilo: "5")
        let poke2 = Pokemon(name: "Ivysaur", imagePath: "2.png", skill: "Grama e Veneno", hp: "90", attack: "15", defense: "24", kilo: "17")
        let poke3 = Pokemon(name: "Venusaur", imagePath: "3.png", skill: "Grama e Veneno", hp: "220", attack: "25", defense: "34", kilo: "97")
        let poke4 = Pokemon(name: "Charmander", imagePath: "4.png", skill: "Fogo", hp: "40", attack: "10", defense: "10", kilo: "10")
        let poke5 = Pokemon(name: "Charmeleon", imagePath: "5.png", skill: "Fogo", hp: "90", attack: "15", defense: "32", kilo: "27")
        let poke6 = Pokemon(name: "Charizard", imagePath: "6.png", skill: "Fogo e Voador", hp: "220", attack: "25", defense: "44", kilo: "85")
        let poke7 = Pokemon(name: "Squirtle", imagePath: "7.png", skill: "Água", hp: "40", attack: "10", defense: "25", kilo: "7")
        let poke8 = Pokemon(name: "Wartortle", imagePath: "8.png", skill: "Água", hp: "90", attack: "15", defense: "32", kilo: "12")
        let poke9 = Pokemon(name: "Blastoise", imagePath: "9.png", skill: "Água", hp: "250", attack: "32", defense: "66", kilo: "100")
        
        let pokeList:Array<Pokemon> = [poke1,poke2,poke3,poke4,poke5,poke6,poke7,poke8,poke9]
        return pokeList
    }

}
