import 'package:equatable/equatable.dart';

abstract class AllDataEvent extends Equatable {}

class FetchAlldataEvent extends AllDataEvent {
  int artistId;

  FetchAlldataEvent(this.artistId);

  @override
  List<Object?> get props => [artistId];
}
