# PokedexDomain

Capa de dominio para una aplicación Pokédex en iOS. Este paquete Swift contiene las entidades, casos de uso e interfaces de repositorio siguiendo los principios de Clean Architecture.

## 📋 Requisitos

- iOS 16.0+
- Swift 5.7+
- Xcode 14.0+

## 📦 Instalación

### Swift Package Manager

Agrega el paquete a tu proyecto usando Xcode:

1. File > Add Package Dependencies
2. Ingresa la URL del repositorio: `https://github.com/NickMano/ios-pokedex-domain-layer`
3. Selecciona la versión deseada

O agrega la dependencia en tu `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/NickMano/ios-pokedex-domain-layer", from: "1.0.0")
]
```

## 🏗️ Arquitectura

Este paquete implementa la capa de dominio siguiendo Clean Architecture, independiente de frameworks y detalles de implementación.

### Entidades

- `Pokemon`: Entidad principal con información del Pokémon
- `PokemonSpecies`: Información de la especie
- `Type`: Tipos de Pokémon (fuego, agua, etc.)
- `Ability`: Habilidades del Pokémon
- `EggGroup`: Grupos de huevo para reproducción

### Casos de Uso

- **SearchPokemonsUseCase**: Busca y obtiene la lista de Pokémon
- **GetWeaknessesUseCase**: Calcula las debilidades basadas en los tipos
- **SearchPokemonImageUseCase**: Obtiene las imágenes de los Pokémon

### Interfaces de Repositorio

- `PokemonRepository`: Define operaciones para obtener datos de Pokémon
- `TypeRepository`: Define operaciones para obtener información de tipos

## 💻 Uso

### Implementar los Repositorios

```swift
import PokedexDomain

class MyPokemonRepository: PokemonRepository {
    func fetchPokemons() async throws -> [Pokemon] {
        // Implementación con API o base de datos local
    }

    func fetchPokemonImage(_ imageUrl: String) async throws -> Data {
        // Implementación para descargar imágenes
    }

    func fetchSpecies(_ identifier: Int) async throws -> PokemonSpecies {
        // Implementación para obtener especies
    }

    func fetchEggGroup(_ name: String) async throws -> EggGroup {
        // Implementación para obtener grupos de huevo
    }
}
```

### Usar los Casos de Uso

```swift
let repository = MyPokemonRepository()
let useCase = DefaultSearchPokemonsUseCase(pokemonRepository: repository)

Task {
    do {
        let pokemons = try await useCase.execute()
        print("Pokémon encontrados: \(pokemons.count)")
    } catch {
        print("Error: \(error)")
    }
}
```

### Calcular Debilidades

```swift
let typeRepository = MyTypeRepository()
let weaknessUseCase = DefaultGetWeaknessesUseCase(typeRepository: typeRepository)

Task {
    do {
        let weaknesses = try await weaknessUseCase.execute(typeNames: ["fire", "flying"])
        print("Debilidades: \(weaknesses)")
    } catch {
        print("Error: \(error)")
    }
}
```

## 🧪 Tests

El paquete incluye tests unitarios. Ejecútalos con:

```bash
swift test
```

## 📝 Licencia

Este proyecto está disponible bajo los términos que defina el propietario del repositorio.

## 👤 Autor

**Nicolas Manograsso**

- GitHub: [@NickMano](https://github.com/NickMano)
