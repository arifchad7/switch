import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
       bool _switch= false;
ThemeData dark=ThemeData(brightness: Brightness.dark);

ThemeData light=ThemeData(brightness: Brightness.light);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _switch? dark: light,
      home: Scaffold(
        appBar: AppBar(
          title:Text('Day and Night') ,
          centerTitle: true,

        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.lightbulb, color:Colors.yellow,size: 90,),
              SizedBox(height: 40,),
              Text('Switch',style: TextStyle(fontSize:40, color: Colors.green, fontWeight: FontWeight.bold,),),
          Switch(activeColor: Colors.purple,
              activeTrackColor: Colors.pink,


              value: _switch, onChanged: (_newvalue){
            setState(() {
              _switch= _newvalue;
            });
          })
            ],
          ),
        ),
      ),
    );
  }
}
