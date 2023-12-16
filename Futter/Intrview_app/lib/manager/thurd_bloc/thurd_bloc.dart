// ignore_for_file: invalid_use_of_visible_for_testing_member
import 'package:app_with_apps/api/service/api_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'thurd_event.dart';
part 'thurd_state.dart';

class ThurdBloc extends Bloc<ThurdEvent, ThurdState> {
  ThurdBloc() : super(WhetherInitial()) {
    on<GetWhether>(_getWhether);
  }

  ServiceApiNotes service = ServiceApiNotes();

  Future<void> _getWhether(GetWhether event, Emitter<ThurdState> state) async {
    emit(WhetherLoading());
    try {
      final _whether = await service.getWhether();
      emit(WhetherSucess(whether: _whether));
    } catch (error) {
      emit(WhetherError());
    }
  }
}
