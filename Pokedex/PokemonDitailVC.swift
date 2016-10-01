//
//  PokemonDitailVC.swift
//  Pokedex
//
//  Created by Evgeny Vlasov on 9/29/16.
//  Copyright © 2016 Evgeny Vlasov. All rights reserved.
//

import UIKit

class PokemonDitailVC: UIViewController {

    var pokemon: Pokemon!
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var pokedexLbl: UILabel!
    @IBOutlet weak var weightlbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    @IBOutlet weak var evoLbl: UILabel!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLbl.text = pokemon.name
        self.view.backgroundColor = UIColor.white
        
        pokemon.downloadPokemonDetail {

            self.updateUI()
        }
    }
    
    func updateUI(){
        attackLbl.text = pokemon.attack
        defenseLbl.text = pokemon.defense
        heightLbl.text = pokemon.height
        weightlbl.text = pokemon.weight
    }

    @IBAction func backBtnPressed(_ sender: AnyObject) {
    dismiss(animated: true, completion: nil)
    
    }

}






