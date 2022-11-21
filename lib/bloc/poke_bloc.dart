import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_technique/bloc/poke_repo.dart';
import 'package:test_technique/poke_models.dart';
part 'poke_bloc_event.dart';
part 'poke_bloc_state.dart';

class PokeBloc extends Bloc<PokeBlocEvent, PokeBlocState> {
  final PokeRepo pokeRepo;

  PokeBloc(this.pokeRepo) : super(PokeBlocInitial()) {
    on<FetchPokemonEvent>((event, emit) async {
      emit(PokeBlocInitial());
      try {
        final pokemons = await pokeRepo.getPokemon();
        emit(PokeBlocLoaded(pokemon: pokemons));
      } catch (e) {
        emit(PokeBlocError(e.toString()));
      }
    });
  }
}
