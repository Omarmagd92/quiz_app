
import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/ticker.dart';
import 'package:untitled/timer_event.dart';
import 'package:untitled/timer_state.dart';

class TimerBloc extends Bloc<TimerEvent,TimerState>{
  int duaration=60;
   late Ticker ticker;
    late StreamSubscription<int>_tickerSubscription;

  TimerBloc(Ready(duration)) : super(Ready(60));





  @override
  Stream<TimerState> mapEventToState(TimerEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
  
}