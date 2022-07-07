import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              padding: const EdgeInsets.all(40),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    minRadius: 20,
                    maxRadius: 45,             
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text('Aldilan', style: TextStyle(fontSize: 20, color: Colors.white),)
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20)
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, top:20, bottom: 30),
            child: Text("Today's Attendance", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 70),
                child: Column(
                  children: [
                    Text('Check In', style: TextStyle(fontSize: 30),),
                    SizedBox(height: 20,),
                    Text('07:30', style: TextStyle(fontSize: 25),)
                  ],
                ),
              ),
              Container(
                width: 5,
                height: 150,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Column(
                  children: [
                    Text('Check Out', style: TextStyle(fontSize: 30),),
                    SizedBox(height: 20,),
                    Text('07:30', style: TextStyle(fontSize: 25),)
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: Container(
        height: 90.0,
        width: 90.0,
        child: FittedBox(
          child: FloatingActionButton(onPressed: () {}, child: Icon(Icons.qr_code_scanner_sharp),),
        ),
      ),      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.person_outline_outlined, size: 50,), label: Text('Profile')),
              SizedBox.shrink(),
              Icon(Icons.logout_outlined, size: 50, color: Colors.white,),
            ],
          ),
        ),
      ),
      );
  }
}
