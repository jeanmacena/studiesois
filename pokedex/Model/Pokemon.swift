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
    
    init(name: String, imagePath: String){
        self.name = name
        self.imagePath = imagePath
    }

}
