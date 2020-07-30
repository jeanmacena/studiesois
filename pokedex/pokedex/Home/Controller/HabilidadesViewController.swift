//
//  HabilidadesViewController.swift
//  pokedex
//
//  Created by Jean Macena on 30/07/20.
//  Copyright © 2020 Jean Macena. All rights reserved.
//

import UIKit

class HabilidadesViewController: UIViewController {
    
    
    @IBOutlet weak var HabilidadesTable: UITableView!
    
    let names = ["Pound    Norma","Karate Cho","Double Slap","Comet Punch","Mega Punch","Pay Day    Normal","Fire Punch","Ice Punch","Thunder Punch    Electric","Scratch    Normal","Vise Grip","Guillotine","Razor Wind","Swords Dance","Cut    Normal","Gust","Wing Attack","Whirlwind","Fly    Flying","Bind","Slam","Vine Whip","Stomp","Double Kick"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        HabilidadesTable.delegate = self
        HabilidadesTable.dataSource = self
    }
    

}

extension HabilidadesViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("click")
    }
    
}

extension HabilidadesViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    
}

