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
/*
Color colors;
setState(() {
if (${pokeList[index].type} == 'grass'
color = Colors.green;
}
else if(${pokeList[index].type} == 'fire'){
color = Colors.red;
} else {
color = Colors.blue;
}
});
*/