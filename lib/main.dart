import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_technique/bloc/poke_bloc.dart';
import 'package:test_technique/bloc/poke_repo.dart';
import 'package:test_technique/error_page.dart';
import 'package:test_technique/poke_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => PokeBloc(PokeRepoImpl()),
        child: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PokeBloc pokebloc;
  @override
  void initState() {
    super.initState();
    pokebloc = BlocProvider.of<PokeBloc>(context);
    pokebloc.add(FetchPokemonEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PokeBloc, PokeBlocState>(
        builder: (context, state) {
          if (state is PokeBlocInitial) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          if (state is PokeBlocLoaded) {
            return ListPokemon(pokeList: state.pokemon);
          }
          if (state is PokeBlocError) {
            return const ErrorScreen();
          }
          return const Scaffold(
            body: Center(child: Text("erreur")),
          );
        },
      ),
    );
  }
}
