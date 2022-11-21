part of 'poke_bloc.dart';

abstract class PokeBlocState extends Equatable {}

class PokeBlocInitial extends PokeBlocState {
  @override
  List<Object?> get props => [];
}

class PokeBlocLoaded extends PokeBlocState {
  final List<Pokemon> pokemon;

  PokeBlocLoaded({required this.pokemon});
  @override
  List<Object?> get props => [pokemon];
}

class PokeBlocError extends PokeBlocState {
  final String error;

  PokeBlocError(this.error);
  @override
  List<Object?> get props => [error.toString()];
}
