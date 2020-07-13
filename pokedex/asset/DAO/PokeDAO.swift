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
        let poke1 = Pokemon(name: "Bulbasaur", imagePath: "1.png")
        let poke2 = Pokemon(name: "Ivysaur", imagePath: "2.png")
        let poke3 = Pokemon(name: "Venusaur", imagePath: "3.png")
        let poke4 = Pokemon(name: "Charmander", imagePath: "4.png")
        let poke5 = Pokemon(name: "Charmeleon", imagePath: "5.png")
        let poke6 = Pokemon(name: "Charizard", imagePath: "6.png")
        let poke7 = Pokemon(name: "Squirtle", imagePath: "7.png")
        let poke8 = Pokemon(name: "Wartortle", imagePath: "8.png")
        let poke9 = Pokemon(name: "Blastoise", imagePath: "9.png")
        
        let pokeList:Array<Pokemon> = [poke1,poke2,poke3,poke4,poke5,poke6,poke7,poke8,poke9]
        return pokeList
    }

}
