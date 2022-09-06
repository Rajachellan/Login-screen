import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHome(),debugShowCheckedModeBanner: false,);
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text ("My App"),),
    backgroundColor: Colors.grey,
    body: Padding(
      padding: const EdgeInsets.only(top: 8.0,left: 8),
      child: SingleChildScrollView(scrollDirection: Axis.horizontal,
       /* child: Row(
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(color: Colors.pink),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0,left: 10),
                    child: const Text ("My Box"),
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(color: Colors.pink),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 10),
                    child: const Text ("My Box"),
                  )
              ),
            ),

          ],
        ),*/
        child: Container(
            width: 350,
            height: 200,
            decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0,left: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only (right: 270.0),
                    child: const Text ("Login", style: TextStyle(fontSize: 20,color: Colors.lime),),
                  ),
                  Row(
                    children: [
                      Text ("Don't have an account?",style: GoogleFonts.poppins(fontSize: 15),),
                      Text ("Create an account?",style: TextStyle(color: Color(0XFF6A8ADF),fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container (width: 300,height: 50 ,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white,border: Border.all(color: Colors.black)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text("Emailid:",style: TextStyle(color: Colors.grey,fontSize: 15),),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container (width: 300,height: 50 ,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white,border: Border.all(color: Colors.black)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text("Password:",style: TextStyle(color: Colors.grey,fontSize: 15),),
                      ),
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
    ),
    );
  }
}

