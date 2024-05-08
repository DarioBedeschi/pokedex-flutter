import 'package:pokedex/data/repositories/pokemon_repository_implementation.dart';
import 'package:pokedex/domain/entities/pokemon_entity.dart';
import 'package:pokedex/domain/usecases/get_pokemons_usecase.dart';

class PokemonListPageStore {
  late final GetPokemonsUsecase usecase;

  PokemonListPageStore() {
    final repository = PokemonRepositoryImplementation();
    usecase = GetPokemonsUsecase(repository);
  }
  Future<List<PokemonEntity>> getPokemon() {
    final list = usecase();
    return list;
  }
}
