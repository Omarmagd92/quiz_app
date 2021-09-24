
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class TimerEvent extends Equatable{
  TimerEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];

}
class Start extends TimerEvent{
  int? duration;
  Start({@required this.duration});
  @override
  String toString(){
    return "duration$duration";
  }
}
class Pause extends TimerEvent{}
class Resume extends TimerEvent{}
class Reset extends TimerEvent{}
class Tick extends TimerEvent{
  int? duration;
  Tick({@required this.duration});

}