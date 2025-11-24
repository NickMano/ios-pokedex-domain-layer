//
//  SearchPokemonsUseCase.swift
//  Pokedex
//
//  Created by nicolas.e.manograsso on 02/03/2023.
//

public protocol SearchPokemonsUseCase {
    func execute() async throws -> [Pokemon]
}

public final class DefaultSearchPokemonsUseCase: SearchPokemonsUseCase {
    private let pokemonRepository: PokemonRepository
    
    public init(pokemonRepository: PokemonRepository) {
        self.pokemonRepository = pokemonRepository
    }
    
    public func execute(limit: Int = 100, offset: Int = 0) async throws -> [Pokemon] {
        return try await pokemonRepository.fetchPokemons(limit: limit, offset: offset)
    }
}
