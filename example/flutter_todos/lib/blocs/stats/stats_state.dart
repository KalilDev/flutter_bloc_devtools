import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_devtools/flutter_bloc_devtools.dart';

abstract class StatsState extends Equatable implements Mappable {
  const StatsState();

  @override
  List<Object> get props => [];

  @override
  Map<String, dynamic> toMap() => {};
}

class StatsLoadInProgress extends StatsState {}

class StatsLoadSuccess extends StatsState {
  final int numActive;
  final int numCompleted;

  const StatsLoadSuccess(this.numActive, this.numCompleted);

  @override
  List<Object> get props => [numActive, numCompleted];

  @override
  Map<String, dynamic> toMap() => {
        'numActive': numActive,
        'numCompleted': numCompleted,
      };
}
