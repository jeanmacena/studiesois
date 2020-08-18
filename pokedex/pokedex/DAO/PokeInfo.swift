//
//  PokeInfo.swift
//  pokedex
//
//  Created by Jean Macena on 13/08/20.
//  Copyright © 2020 Jean Macena. All rights reserved.
//

import Foundation


// MARK: - Welcome
struct PokeDetails: Codable {
    let id: Int
    let name: String
    let order: Int
    let sprites: Sprites
    let stats: [StatElement]
    let types: [TypeElement]
    let weight: Int
}

// MARK: - Sprites
struct Sprites: Codable {
    let frontDefault: String

    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
    }
}

// MARK: - StatElement
struct StatElement: Codable {
    let baseStat: Int
    let stat: TypeClass

    enum CodingKeys: String, CodingKey {
        case baseStat = "base_stat"
        case stat
    }
}

// MARK: - TypeClass
struct TypeClass: Codable {
    let name: String
}

// MARK: - TypeElement
struct TypeElement: Codable {
    let type: TypeClass
}
