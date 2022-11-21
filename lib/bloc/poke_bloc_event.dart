part of 'poke_bloc.dart';

abstract class PokeBlocEvent extends Equatable {}

class FetchPokemonEvent extends PokeBlocEvent {
  @override
  List<Object?> get props => [];
}
