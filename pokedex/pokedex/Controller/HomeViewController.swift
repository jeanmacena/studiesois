//
//  HomeViewController.swift
//  pokedex
//
//  Created by Jean Macena on 13/07/20.
//  Copyright © 2020 Jean Macena. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var searchBox: UITextField!
    
    @IBOutlet weak var pokeCount: UILabel!
    
    @IBOutlet weak var pokeColletion: UICollectionView!
    
    var pokeList: Array<Pokemon> = PokeDAO().getAllPokemon()
    var filteredPokeList: [Pokemon] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pokeColletion.dataSource = self
        pokeColletion.delegate = self
        filteredPokeList = pokeList
        searchBox.addTarget(self, action: #selector(HomeViewController.textChanged(_:)), for: .editingChanged)
        pokeCount.text = "\(filteredPokeList.count) pokémon(s) encontrado(s)"
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filteredPokeList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let pokeCell = collectionView.dequeueReusableCell(withReuseIdentifier: "pokeCell", for: indexPath) as! PokeCollectionViewCell
        let pkShow = filteredPokeList[indexPath.row]
        
        pokeCell.pokeName.text = pkShow.name
        pokeCell.pokeImage.image = UIImage(named: pkShow.imagePath)
        
        return pokeCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let poke = filteredPokeList[indexPath.item]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "detalhes") as! DetalhesViewController
        controller.pokeSelecionado = poke
        self.present(controller, animated: true, completion: nil)
        
    }
    
    @IBAction func textChanged(_ sender: Any) {
        if searchBox.text == ""{
            filteredPokeList = pokeList
        }else{
            filteredPokeList = pokeList.filter{
                $0.name.contains(searchBox.text ?? "")
            }
        }
        pokeCount.text = "\(filteredPokeList.count) pokémon(s) encontrado(s)"
        pokeColletion.reloadData()
        
    }
    
    
    
}
