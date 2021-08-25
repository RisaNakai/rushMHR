
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



import 'package:sumple2/timetable.dart';
import 'package:sumple2/todo.dart';
import 'calendar.dart';

void main() {


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Calendar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

print(_currentIndex);
    return Scaffold(

      appBar: AppBar(
        title: Text('Calendar',style:TextStyle(color:Color(0xFFF7F7EE))),
          backgroundColor:Color(0xFF17706E),
      ),

       body:// (_currentIndex == 0 )? ToDoScreen(): Timetable(),
       Center(
        child: (() {
          if (_currentIndex == 0) {
            return ToDoScreen();
          } else if(_currentIndex == 1) {
            return Timetable();
          }else{
            return Calendar();
          }
        })()
       ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (int index) {
          setState((){
            this._currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.checklist,color:Colors.white),
            label: 'ToDo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_outlined,color:Colors.white),
            label: 'Timetable',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.today,color:Colors.white),
            label: 'Calender',
          ),
        ],
        backgroundColor: Color(0xFF17706E),
      ),



    );
  }
}
