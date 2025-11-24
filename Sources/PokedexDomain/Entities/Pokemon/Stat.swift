//
//  Stat.swift
//  PokedexDomain
//
//  Created by Manograsso, Nicolas on 24/11/2025.
//

public struct Stat: Codable, Equatable, Hashable {
    public let baseStat: Int
    public let effort: Int
    public let stat: NameUrl
    
    enum CodingKeys: String, CodingKey {
        case baseStat = "base_stat"
        case effort
        case stat
    }
}
