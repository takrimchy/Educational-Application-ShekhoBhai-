import 'package:flutter/material.dart';
import 'logIn.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class welcomePage extends StatelessWidget {
  final controller = LiquidController();


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Stack(children: [
      LiquidSwipe(
        liquidController: controller,
        enableLoop: false,
        enableSideReveal: true,
        slideIconWidget: const Icon(Icons.arrow_back_ios),
        positionSlideIcon: 0.5,
        pages: [
          Container(
            color: Colors.deepPurpleAccent,
            padding: const EdgeInsets.all(30.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: const AssetImage('assets/asAStudent.png'),
                    height: height * 0.3,
                  ),
                  Column(
                    children: const [
                      Text("Student Feature",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          )
                          // Theme.of(context).textTheme.headline4,

                          ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "* Complete Guideline About Carrier Choice \n * Complete Guideline of Chosen Carrier\n"
                        "*Could Ask Question to His Favourite Professor",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ]),
          ),
          Container(
            color: Colors.tealAccent,
            padding: const EdgeInsets.all(50.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: const AssetImage('assets/asATeacher.png'),
                    height: height * 0.3,
                  ),
                  Column(
                    children: const [
                      Text("Teacher Feature",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          )
                          // Theme.of(context).textTheme.headline4,

                          ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "* The best teachers are those who show us where to look but don't tell us what to see ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ]),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(35.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  image: AssetImage('assets/welcomeimage.jpg'),
                  height: height * 0.3,
                ),
                Column(
                  children: const [
                    Text("Welcome to ShekhoBha!",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        )
                        //style: Theme.of(context).textTheme.headline4,
                        ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "We create a bridge between learners & mentors",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => lonIn()));
                          },
                          style: OutlinedButton.styleFrom(
                              shape: const RoundedRectangleBorder(),
                              side: const BorderSide(color: Colors.black),
                              padding: const EdgeInsets.symmetric(vertical: 8)),
                          child: const Text(
                            "LOGIN",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            side: const BorderSide(color: Colors.blueAccent),
                            padding: const EdgeInsets.symmetric(vertical: 8),
                          ),
                          child: const Text("SIGNUP")),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
         
          Positioned(
              bottom: 0,
              left: 16,
              right: 32,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: const Text("SKIP"),
                    onPressed: () {
                      controller.jumpToPage(page: 2);
                    },
                  ),
                  TextButton(
                    child: const Text("NEXT",
                    style: TextStyle(color: Colors.blue),),
                    onPressed: () {
                      final page = controller.currentPage + 1;

                      controller.animateToPage(page: page > 4 ? 0 : page,
                      duration: 400,
                      );
                    },
                  ),
                ],
              )
          )

    ]
        )
    );

  }
}
