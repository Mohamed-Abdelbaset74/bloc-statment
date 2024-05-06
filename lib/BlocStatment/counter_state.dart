part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}



final class CounterInitial extends CounterState {}


class CounterValueChanged extends CounterState{

   final int Counter1 ;
   final int Counter2 ;
   final num Result ;
   final String opertator;
  CounterValueChanged(this.Counter1,this.Counter2, this.Result, this.opertator);





}


