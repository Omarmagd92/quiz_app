
import 'package:equatable/equatable.dart';

abstract class TimerState extends Equatable{
   int duration=60;
  TimerState(this.duration);
   @override
   List<Object?> get props => [duration];
}
class Ready extends TimerState{
  Ready(int duration) : super(duration);

}
class Pause extends TimerState{
  Pause(int duration) : super(duration);
}
class Running extends TimerState{
  Running(int duration) : super(duration);
}
class finished extends TimerState{
  finished(int duration) : super(0);
}

