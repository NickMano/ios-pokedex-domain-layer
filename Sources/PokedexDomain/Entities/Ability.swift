//
//  Ability.swift
//  Pokedex
//
//  Created by nicolas.e.manograsso on 15/12/2022.
//

public struct Ability: Codable, Equatable, Hashable {
    public let ability: NameUrl
    public let isHidden: Bool
    public let slot: Int
    
    enum CodingKeys: String, CodingKey {
        case ability
        case isHidden = "is_hidden"
        case slot
    }
}
