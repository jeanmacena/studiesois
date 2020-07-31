//
//  DetalhesViewController.swift
//  pokedex
//
//  Created by Jean Macena on 30/07/20.
//  Copyright © 2020 Jean Macena. All rights reserved.
//

import UIKit

class DetalhesViewController: UIViewController {
    
    
    @IBOutlet weak var pokeImage: UIImageView!
    
    @IBOutlet weak var pokeName: UILabel!
    
    @IBOutlet weak var pokeHabilidades: UILabel!
    
    @IBOutlet weak var pokeHP: UILabel!
    
    @IBOutlet weak var pokeAttack: UILabel!
    
    @IBOutlet weak var pokeDefense: UILabel!
    
    @IBOutlet weak var pokeKilo: UILabel!
    
    var pokeSelecionado:Pokemon? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        if let poke = pokeSelecionado{
            self.pokeImage.image = UIImage(named: poke.imagePath)
            self.pokeName.text = "Nome: \(poke.name)"
            self.pokeHabilidades.text = "Habilidades: \(poke.skill)"
            self.pokeHP.text = "HP: \(poke.hp)"
            self.pokeAttack.text = "Ataque: \(poke.attack)"
            self.pokeDefense.text = "Defesa: \(poke.defense)"
            self.pokeKilo.text = "Peso: \(poke.kilo)kg"
        }

    }
    
    
    @IBAction func btnVoltar(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
