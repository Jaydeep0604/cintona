import 'package:equatable/equatable.dart';

abstract class AllNewsEvent extends Equatable {}

class fetchAllNewsEvent extends AllNewsEvent{
  
  @override
  List<Object?> get props => [];
}
class FetchAlldataEvent extends AllNewsEvent {
  int artistId;

  FetchAlldataEvent(this.artistId);

  @override
  List<Object?> get props => [artistId];
}