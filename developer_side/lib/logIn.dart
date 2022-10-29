import 'package:flutter/material.dart';

class lonIn extends StatefulWidget {
  const lonIn({Key? key}) : super(key: key);

  @override
  State<lonIn> createState() => _lonInState();
}

class _lonInState extends State<lonIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: Center(
           child: Column(
             children:
            [
              SizedBox(height: 150,),
              Text('ShekhoBha!', style:
              TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                color: Colors.red,
              ),
              ),
              SizedBox(height: 10),
              Text('Know-Ask-Learn-Grow', style:
              TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              ),
              SizedBox(height: 50),


              //------------------- email text field-------------------


            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),

              child: Container(

              decoration: BoxDecoration(
                color: Colors.grey[200],
              border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(20)
              ),


             child: const Padding(

                 padding:  EdgeInsets.symmetric(horizontal: 22.0),
             child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Username',

                ),
              )
             )
            )
            ),

            SizedBox(height: 10,),

              //--------------- Password Text Field--------------------


              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),

                  child: Container(

                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20)
                      ),


                      child: const Padding(

                          padding:  EdgeInsets.symmetric(horizontal: 22.0),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',

                            ),
                          )
                      )
                  )
              )

              //------------- Sign In Button -------------------



            ],
          ),
        )

        )
    );
  }
}
