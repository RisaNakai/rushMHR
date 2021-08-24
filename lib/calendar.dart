import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:collection';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget{
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar>{
  DateTime _focusedDay = DateTime.now();//今日の日付
  CalendarFormat _calendarFormat = CalendarFormat.month;//デフォルトは月の表示
  DateTime? _selectedDay;  //タップした日付に印がつく,?をつけるとnullになる
  Map<DateTime, List> _eventsList = {};

  //int _selectedIndex = 0;

  int getHashCode(DateTime key) {
    return key.day * 1000000 + key.month * 10000 + key.year;
  }

  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
    //サンプルのイベントリスト
    _eventsList = {
      //Duration(時間軸:期間);
      DateTime.now().subtract(Duration(days: 2)): ['Event A6', 'Event B6'],
      DateTime.now(): ['生命の科学', 'あいうえお', 'Event C7', 'Event D7'],
      DateTime.now().add(Duration(days: 1)): [
        'Event A8',
        'Event B8',
        'Event C8',
        'Event D8'
      ],
      DateTime.now().add(Duration(days: 3)):
      Set.from(['Event A9', 'Event A9', 'Event B9']).toList(),
      DateTime.now().add(Duration(days: 7)): [
        'Event A10',
        'Event B10',
        'Event C10'
      ],
      DateTime.now().add(Duration(days: 11)): ['Event A11', 'Event B11'],
      DateTime.now().add(Duration(days: 17)): [
        'Event A12',
        'Event B12',
        'Event C12',
        'Event D12',
      ],
      DateTime.now().add(Duration(days: 22)): ['Event A13', 'Event B13'],
      DateTime.now().add(Duration(days: 26)): [
        'Event A14',
        'Event B14',
        'Event C14'
      ],
    };
  }

  /*
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
*/

  @override
  Widget build(BuildContext context) {

    final _events = LinkedHashMap<DateTime, List>(
      equals: isSameDay,
      hashCode: getHashCode,
    )..addAll(_eventsList);

    List _getEventForDay(DateTime day) {
      return _events[day] ?? [];
    }



    return Scaffold(
      body: Column(

    children: <Widget>[

      CustomPaint(
        painter: SquarePainter(),
        child: Container(
          //height: size.height,
        ),
      ),

    TableCalendar(
        firstDay: DateTime.utc(2020, 1, 1),//一番最初の日付
    lastDay: DateTime.utc(2030, 12, 31),//一番最後の日付
    focusedDay: _focusedDay,//今日の日付
    calendarFormat: _calendarFormat,

    onFormatChanged: (format) {
    if (_calendarFormat != format) {
    setState(() {
    _calendarFormat = format;
    });
    }
    },


    eventLoader: _getEventForDay,
    selectedDayPredicate: (day) {      //タップした日付に印がつく
    return isSameDay(_selectedDay, day);
    },
    onDaySelected: (selectedDay, focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
    setState(() {
    _selectedDay = selectedDay;
    _focusedDay = focusedDay;
    });
    _getEventForDay(selectedDay);
    }
    },


    ),
    Text("$_selectedDay"),
    ListView(
    shrinkWrap: true,
    children: _getEventForDay(_selectedDay!)
        .map((event) => ListTile(
    title: Text(event.toString()),
    ))
        .toList(),
    ),
    ],
    ),
    );


  }

}

class SquarePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();

    paint.color = Color(0xFFF7F7EE);
    var w = size.width;
    var h = size.height;
    var rect = Rect.fromLTWH(0, 0, w, h * 2);
    canvas.drawRect(rect, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}