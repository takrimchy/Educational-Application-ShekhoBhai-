import 'package:flutter/material.dart';

class welcomePage extends StatelessWidget {
  const welcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage('assets/welcomeimage.jpg')),
          Row(
            children: [

              OutlinedButton(onPressed: (){},
                  child: Text("Log In")),

              ElevatedButton(onPressed: (){},
                  child: Text("Sign Up")),
            ],
          )
        ],
      ),
    ),
    );
  }
}


