//
//  Pokemon.swift
//  pokedex
//
//  Created by Jean Macena on 13/07/20.
//  Copyright © 2020 Jean Macena. All rights reserved.
//

import UIKit

class Pokemon: NSObject {
    let name: String
    let imagePath: String
    let skill: String
    let hp: String
    let attack: String
    let defense: String
    let kilo: String
    
    init(name: String, imagePath: String, skill: String, hp: String, attack: String, defense: String, kilo: String){
        self.name = name
        self.imagePath = imagePath
        self.skill = skill
        self.hp = hp
        self.attack = attack
        self.defense = defense
        self.kilo = kilo
    }

}
