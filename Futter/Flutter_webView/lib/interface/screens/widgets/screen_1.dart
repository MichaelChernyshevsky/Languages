import 'package:app_with_apps/constants/models/state_enum.dart';
import 'package:app_with_apps/manager/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key, required this.id});

  final int id;

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  AppState state = AppState.loading;
  SomeBloc? _bloc;

  @override
  void initState() {
    _bloc = BlocProvider.of<SomeBloc>(context);
    _bloc!.add(GetNotesEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocListener<SomeBloc, BlocState>(
          listener: (context, state) {
            if (state is BlocError) {
              // print('error');
            } else if (state is DeleteSucess) {
              setState(() {});
            }
          },
          child: const Text('')),
    );
  }
}
