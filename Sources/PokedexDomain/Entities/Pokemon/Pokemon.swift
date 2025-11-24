//
//  Pokemon.swift
//  Pokedex
//
//  Created by nicolas.e.manograsso on 13/12/2022.
//

import Foundation

public struct Pokemon: Codable, Equatable, Hashable, Identifiable {
    private let sprites: Sprites
    public let types: [PokeType]
    public let species: NameUrl
    
    public let name: String
    public let id: Int
    public let height: Int
    public let weight: Int
    public let abilities: [Ability]
    public let baseExperience: Int?
    public let stats: [Stat]
    
    enum CodingKeys: String, CodingKey {
        case sprites
        case types
        case species
        case name
        case id
        case height
        case weight
        case abilities
        case stats
        case baseExperience = "base_experience"
    }
    
    public init() {
        sprites = Sprites(other: OtherSprite(artwork: ArtworkSprite(imageUrl: "")))
        types = []
        species = NameUrl(name: "", url: "")
        name = ""
        id = 0
        height = 0
        weight = 0
        abilities = []
        baseExperience = 0
        stats = []
    }
    
    public var imageUrl: String {
        sprites.other.artwork.imageUrl
    }
    
    public var numberFormatted: String {
        let number = String(format: "%03d", id)
        return "#\(number)"
    }
    
    var speciesUrl: String {
        species.url
    }
}

public struct PokeType: Codable, Equatable, Hashable {
    public let type: NameUrl
}
