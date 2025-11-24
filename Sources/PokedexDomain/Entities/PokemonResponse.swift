//
//  PokemonResponse.swift
//  Pokedex
//
//  Created by nicolas.e.manograsso on 13/12/2022.
//

public struct PokemonResponse: Codable {
    let next: String?
    public let pokemons: [NameUrl]
    
    enum CodingKeys: String, CodingKey {
        case next
        case pokemons = "results"
    }
}

public struct NameUrl: Codable, Equatable, Hashable {
    public let name: String
    public let url: String
}
