//
//  Sprites.swift
//  PokedexDomain
//
//  Created by Manograsso, Nicolas on 24/11/2025.
//

struct Sprites: Codable, Equatable, Hashable {
    let other: OtherSprite
}

struct OtherSprite: Codable, Equatable, Hashable {
    let artwork: ArtworkSprite
    
    enum CodingKeys: String, CodingKey {
        case artwork = "official-artwork"
    }
}

struct ArtworkSprite: Codable, Equatable, Hashable {
    let imageUrl: String
    
    enum CodingKeys: String, CodingKey {
        case imageUrl = "front_default"
    }
}
