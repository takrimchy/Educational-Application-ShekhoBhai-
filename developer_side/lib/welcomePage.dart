import 'package:flutter/material.dart';
import 'logIn.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class welcomePage extends StatelessWidget {
  const welcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    final pages = [

      // ----------------------1st Container starts from here -------------------

      Container(
        color: Colors.white,






      ),
      // ----------------------1st Container ends here-------------------



      Container(
        color: Colors.tealAccent,
      ),




      //-------------- 3rd Welcome Page Starts from here ---------------------
       Container(

        padding: EdgeInsets.all(35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: const AssetImage('assets/welcomeimage.jpg'),
              height: height * 0.3,
            ),
            Column(
              children: [
                Text(
                  "Welcome to ShekhoBha!",
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "We create a bridge between learners and mentors",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => lonIn()));
                      },
                      style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(),
                          side: const BorderSide(color: Colors.black),
                          padding: EdgeInsets.symmetric(vertical: 8)),
                      child: const Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.black),
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.blueAccent),
                        padding: EdgeInsets.symmetric(vertical: 8),
                      ),
                      child: Text("SIGNUP")),
                ),
              ],
            )
          ],
        ),
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: LiquidSwipe(
          pages: pages,
        ),
      ),
    );
  }
}
