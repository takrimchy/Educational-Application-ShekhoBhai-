import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'welcomePage.dart';
import 'logIn.dart';

class signIn extends StatefulWidget {
  const signIn({super.key});

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
                backgroundColor: Colors.grey[300],
               appBar: AppBar(
                title: Text('Sign-Up'),
                centerTitle: true,
                backgroundColor: Colors.deepPurple,
               ),

               body: SafeArea(
                child: Center(

                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                           const SizedBox(height: 40,),

                           Text(
                                  'ShekhoBha!', style:
                                   GoogleFonts.bebasNeue(
                                  fontSize: 40,
                                  color: Colors.deepPurple
                                ),
                           ),

                           const SizedBox(height: 5),

                                Text(
                                'Know-Ask-Learn-Grow',
                                  style: GoogleFonts.bebasNeue(
                                   fontSize:20,

                              ),
                              ),
                            const SizedBox(height: 25),

                             //------------------- first name text field-------------------

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
                              textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'first name',

                                ),
                              )
                            )
                            )
                            ),

                             const SizedBox(height: 5,),

                              //------------------- last name text field-------------------
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
                              textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'last name',

                                ),
                              )
                            )
                            )
                            ),

                             const SizedBox(height: 5,),

                              //-------------------  Occupation text field-------------------

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
                              textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'occupation',

                                ),
                              )
                            )
                            )
                            ),





                             const SizedBox(height: 5,),

                              //-------------------  Username text field-------------------

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
                              textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'username or email',

                                ),
                              )
                            )
                            )
                            ),




                            const SizedBox(height: 5,),

                              //-------------------  password text field-------------------

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
                              textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'password',

                                ),
                              )
                            )
                            )
                            ),

                            const SizedBox(height: 10,),



                            //------------- Sign up Button -------------------

               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 100.0),
                   child: Container(
                   padding: const EdgeInsets.all(10),
                   decoration: BoxDecoration(color: Colors.deepPurple,
                     borderRadius: BorderRadius.circular(12),


                   ),
                   child:  MaterialButton(
                     onPressed: () {},
                     child: Text('Sign Up',
                       style: TextStyle(color: Colors.white,
                         fontWeight: FontWeight.bold,
                         fontSize: 18,
                       ),
                     ),
                   ),
                 ),
               ),

                   const SizedBox(height: 5,),

                  TextButton(
                                      onPressed: (){
                                       Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                          builder: (context) => lonIn()
                                                                          )
                                                                          );
                                      },
                                      child: const Text(
                                        'Already have an account?',
                                        style: TextStyle(color: Colors.blue, fontSize: 15),
                                      ),
                                    ),
                 ]),
                 ),
                 )

                 );
  }
}
