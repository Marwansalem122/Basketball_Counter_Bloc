

import 'package:backetball_counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit(super.initialState);
   int a=0;
   int b=0;
   void teamIncrement(String team,int buttonNumber){
     if(team=='A') {
       a += buttonNumber;
       emit(counterAIncrementState());
     }
     else{
       b+=buttonNumber;
       emit(counterBIncrementState());
     }
   }
   // void teamBIncrement(int buttonNumber){
   //   b+=buttonNumber;
   //   emit(counterBIncrementState());
   // }
}