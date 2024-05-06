
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CalcBulider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffc2e3f3),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child:Text("Calculator",
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Rubik',
                      ),
                    ),
                  ),

                  Container(
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.calculate_outlined,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),

            ),
          ),


          body: CalcBulider(),

        )
                );


              }




  }




