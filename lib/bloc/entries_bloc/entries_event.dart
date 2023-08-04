import 'package:equatable/equatable.dart';

abstract class EntriesEvent extends Equatable {}

class fetchEntriesEvent extends EntriesEvent{
  
  @override
  List<Object?> get props => [];
}
class FetchAlldataEvent extends EntriesEvent {
  int artistId;

  FetchAlldataEvent(this.artistId);

  @override
  List<Object?> get props => [artistId];
}