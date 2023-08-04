import 'package:equatable/equatable.dart';

abstract class PopulationEvent extends Equatable {}

class fetchPopulationEvent extends PopulationEvent{
  
  @override
  List<Object?> get props => [];
}
class FetchAlldataEvent extends PopulationEvent {
  int artistId;

  FetchAlldataEvent(this.artistId);

  @override
  List<Object?> get props => [artistId];
}