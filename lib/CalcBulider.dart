

import 'package:blocproject/BlocStatment/counter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalcBulider extends StatelessWidget {
  const CalcBulider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image.jpg",
            ),
            fit: BoxFit.cover,
          )
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              color: Color(0xff6ac6d0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  BlocBuilder<CounterBloc , CounterState>
                    (builder: (context,state){
                     if(state is CounterInitial){
                       return Text( "0",
                         style: TextStyle(
                             fontSize: 40,
                             fontFamily: "Rubik"
                         ),
                       );
                  } else if (state is CounterValueChanged) {
                       return Text( "${state.Counter1}",
                         style: TextStyle(
                             fontSize: 40,
                             fontFamily: "Rubik"
                         ),);
                  } else{
                       return Container();
                     }
                  }),

                  BlocBuilder<CounterBloc , CounterState>
                    (builder: (context,state){
                    if(state is CounterInitial){
                      return TextButton(
                        child:Text("",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),),
                        style: TextButton.styleFrom(
                          shape: OvalBorder(),
                          backgroundColor: Colors.brown,
                        ),
                        onPressed: () {

                        },
                      );

                    } else if (state is CounterValueChanged) {
                      return TextButton(
                        child:Text("${state.opertator}",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),),
                        style: TextButton.styleFrom(
                          shape: OvalBorder(),
                          backgroundColor: Colors.brown,
                        ),
                        onPressed: () {

                        },
                      );
                    } else{
                      return Container();
                    }
                  }),


                  BlocBuilder<CounterBloc , CounterState>
                    (builder: (context,state){
                    if(state is CounterInitial){
                      return Text( "0",
                        style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Rubik"
                        ),
                      );
                    } else if (state is CounterValueChanged) {
                      return Text( "${state.Counter2}",
                        style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Rubik"
                        ),);
                    } else{
                      return Container();
                    }
                  }),


                  Text("=",
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: "Rubik"
                    ),),

                  BlocBuilder<CounterBloc , CounterState>
                    (builder: (context,state){
                    if(state is CounterInitial){
                      return Text( "0",
                        style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Rubik"
                        ),
                      );
                    } else if (state is CounterValueChanged) {
                      return Text( "${state.Result}",
                        style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Rubik"
                        ),);
                    } else{
                      return Container();
                    }
                  }),
                ],
              ),
            ),
          ),

          SizedBox(height: 20,),



          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Color(0xff6ac6d0),

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Text("  First Number   ",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown,
                                fontFamily: "Rubik"
                            ),),

                          TextButton(
                            child:Text("+",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),),

                            style: TextButton.styleFrom(
                              shape: CircleBorder(),
                              backgroundColor: Colors.white60,
                            ),
                            onPressed: () {

                              BlocProvider.of<CounterBloc>(context).add(IncreamentEvent1(),);
                            },
                          ),

                          TextButton(
                            child:Text("-",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),),

                            style: TextButton.styleFrom(
                              shape: CircleBorder(),
                              backgroundColor: Colors.white60,
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterBloc>(context).add(DcrementEvent1(),);

                            },
                          ),

                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  Container(
                    child: Column(
                      children: [
                          Card(
                          color: Colors.white60,
                          child: TextButton(onPressed: () {

                            BlocProvider.of<CounterBloc>(context).add(AddEvent());

                          },
                          child: Text("   Addtion (+)   ",
                          style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          ),),

                          ),
                          ),
                          Card(
                            color: Colors.white60,
                            child: TextButton(onPressed: () {

                              BlocProvider.of<CounterBloc>(context).add(SubstractionEvent());

                            },
                              child: Text(" Substraction (-) ",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                ),),

                            ),
                          ),
                          Card(
                            color: Colors.white60,
                            child: TextButton(onPressed: () {

                              BlocProvider.of<CounterBloc>(context).add(MultiplyEvent());

                            },
                              child: Text("   Multiply (*)  ",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                ),),

                            ),
                          ),
                        Card(
                          color: Colors.white60,
                          child: TextButton(onPressed: () {

                            BlocProvider.of<CounterBloc>(context).add(DevisionEvent());

                          },
                            child: Text("   Devision (/)  ",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                              ),),

                          ),
                        ),





                      ],
                    ),
                  ),

                  SizedBox(height: 20,),


                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Text("Sconde Number",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.amber,
                                fontFamily: "Rubik"
                            ),),

                          TextButton(
                            child:Text("+",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),),

                            style: TextButton.styleFrom(
                              shape: CircleBorder(),
                              backgroundColor: Colors.white60,
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterBloc>(context).add(IncreamentEvent2(),);

                            },
                          ),

                          TextButton(
                            child:Text("-",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),),

                            style: TextButton.styleFrom(
                              shape: CircleBorder(),
                              backgroundColor: Colors.white60,
                            ),
                            onPressed: () {

                              BlocProvider.of<CounterBloc>(context).add(DcrementEvent2(),);

                            },
                          ),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),


          SizedBox(height: 20,),


          ElevatedButton(onPressed: (){

            BlocProvider.of<CounterBloc>(context).add(ResetEvent(),);

          },
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              backgroundColor:Color(0xff6ac6d0),
            ),

            child:  Text("Reset",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                fontFamily: "Rubik",
                color: Colors.black,
              ),
            ),),











        ],
      ) ,
    );
  }

}
