//
//  HomeViewController.swift
//  pokedex
//
//  Created by Jean Macena on 13/07/20.
//  Copyright © 2020 Jean Macena. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet weak var searchBox: UITextField!
    
    
    
    @IBOutlet weak var pokeColletion: UICollectionView!
    
    var pokeList: Array<Pokemon> = PokeDAO().getAllPokemon()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pokeColletion.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pokeList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let pokeCell = collectionView.dequeueReusableCell(withReuseIdentifier: "pokeCell", for: indexPath) as! PokeCollectionViewCell
        let pkShow = pokeList[indexPath.row]
        
        pokeCell.pokeName.text = pkShow.name
        pokeCell.pokeImage.image = UIImage(named: pkShow.imagePath)
        
        return pokeCell
    }
    
    
}
