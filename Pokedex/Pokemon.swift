//
//  Pokemon.swift
//  Pokedex
//
//  Created by Evgeny Vlasov on 9/27/16.
//  Copyright © 2016 Evgeny Vlasov. All rights reserved.
//

import Foundation
import Alamofire

class Pokemon {
    
    fileprivate var _name: String!
    fileprivate var _pokedexId: Int!
    fileprivate var _description: String!
    fileprivate var _type: String!
    fileprivate var _defense: String!
    fileprivate var _height: String!
    fileprivate var _weight: String!
    fileprivate var _attack: String!
    fileprivate var _nextEvolutionTxt: String!
    fileprivate var _pokemonURL: String!
    
    
    var name: String {
        return _name
    }
    
    var pokedexId: Int {
        return _pokedexId
    }
    
    init(name: String, pokedexId: Int) {
        self._name = name
        self._pokedexId = pokedexId
        self._pokemonURL = "\(URL_BASE)\(URL_POKEMON)\(self.pokedexId)/"
        
    }
    
    func downloadPokemonDetail(completed: DownloadComplete) {
        
        Alamofire.request(_pokemonURL, method: .get).responseJSON { (response) in
            
            if let dict = response.result.value as? Dictionary<String, AnyObject> {
                if let weight = dict ["weight"] as? String {
                        self._weight = weight
                }
                if let height = dict ["height"] as? String {
                    self._height = height
                }
                if let attack = dict ["attack"] as? Int {
                    self._attack = "\(attack)"
                }
                if let defense = dict ["defense"] as? Int {
                    self._defense = "\(defense)"
                }
                
                print(self._weight)
                print(self._attack)
                print(self._height)
                print(self._defense)
                
                
            }
            
        }
        
        
        
    }
    
    
}

















