// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: must_be_immutable

part of 'thurd_bloc.dart';

abstract class ThurdEvent extends Equatable {}

class GetWhether extends ThurdEvent {
  @override
  List<Object?> get props => [];
}
