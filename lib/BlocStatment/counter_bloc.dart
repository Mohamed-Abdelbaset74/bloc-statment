
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {

  int Counter1 = 0 ;
  String opertator= "";
  int Counter2 = 0 ;
 num Result = 0;

  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {

      if(event is IncreamentEvent1)
      {
        Counter1++ ;

        emit(CounterValueChanged( Counter1,Counter2,Result,opertator));
      } else if(event is IncreamentEvent2)
      {

        Counter2++ ;

        emit(CounterValueChanged( Counter1,Counter2,Result,opertator));
      }


      else if(event is DcrementEvent1)
      {

        Counter1-- ;

        emit(CounterValueChanged( Counter1,Counter2,Result,opertator));
      }

      else if(event is DcrementEvent2)
      {

        Counter2-- ;

        emit(CounterValueChanged( Counter1,Counter2,Result,opertator));
      }
      else if(event is AddEvent)
      {
        opertator="+";
        Result= (Counter1+Counter2) ;


        emit(CounterValueChanged( Counter1,Counter2,Result,opertator));
      }

      else if(event is SubstractionEvent)
      {
        opertator="-";
        Result= (Counter1-Counter2) ;


        emit(CounterValueChanged( Counter1,Counter2,Result,opertator));
      }


      else if(event is MultiplyEvent)
      {
        opertator="*";
        Result= (Counter1*Counter2)  ;


      emit(CounterValueChanged( Counter1,Counter2,Result,opertator));
      }

      else if(event is DevisionEvent)
      {
        opertator="/";
        Result = (Counter1/Counter2)  ;


       emit(CounterValueChanged( Counter1,Counter2,Result,opertator));
      }
      else
      {

        Counter1=0;
        Counter2=0;
        Result=0;
        opertator = "";


        emit(CounterValueChanged(Counter1,Counter2,Result,opertator));




      }


    });


  }
}

