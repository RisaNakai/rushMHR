import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'todo_dummy_list.dart';
//import 'package:grouplistview/main.dart';

ToDo_dummy_list dummy_list = ToDo_dummy_list();
List _dataDummy = [];
/*
List _dataDummy = [
  {
    "albumId": "23:59",
    "id": 1,
    "title": "小テスト",
    "url": "https://via.placeholder.com/600/92c952",
    "thumbnailUrl": "https://via.placeholder.com/150/92c952",
    "author": "HanTH",
    "data": "2021/12/20",
    "group": "解析学"
  },
  {
    "albumId": "20:00",
    "id": 2,
    "title": "レポート2000字",
    "url": "https://via.placeholder.com/600/771796",
    "thumbnailUrl": "https://via.placeholder.com/150/771796",
    "author": "HanTH",
    "data": "2021/12/19",
    "group": "プログラミング中級"
  },
  {
    "albumId": "12:00",
    "id": 3,
    "title": "第５回小テスト",
    "url": "https://via.placeholder.com/600/24f355",
    "thumbnailUrl": "https://via.placeholder.com/150/24f355",
    "author": "HanTH",
    "data": "2021/12/23",
    "group": "プログラミング上級",
  },
  {
    "albumId": "8:00",
    "id": 4,
    "title": "レポート10000字",
    "url": "https://via.placeholder.com/600/d32776",
    "thumbnailUrl": "https://via.placeholder.com/150/d32776",
    "author": "HanTH",
    "data": "2021/12/22",
    "group": "メディア表現の技法"
  },
  {
    "albumId": "11:59",
    "id": 4,
    "title": "レポート1000字",
    "url": "https://via.placeholder.com/600/d32776",
    "thumbnailUrl": "https://via.placeholder.com/150/d32776",
    "author": "HanTH",
    "data": "2021/12/22",
    "group": "データベースシステム論"
  },
  {
    "albumId": "21:00",
    "id": 4,
    "title": "レポート1000字",
    "url": "https://via.placeholder.com/600/d32776",
    "thumbnailUrl": "https://via.placeholder.com/150/d32776",
    "author": "HanTH",
    "data": "2021/12/22",
    "group": "データベースシステム論"
  },
  {
    "albumId": "6:00",
    "id": 4,
    "title": "レポート1000字",
    "url": "https://via.placeholder.com/600/d32776",
    "thumbnailUrl": "https://via.placeholder.com/150/d32776",
    "author": "HanTH",
    "data": "2021/12/22",
    "group": "解析学"
  },
];

 */


class ToDoScreen extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _ToDoScreenState createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: GroupListViewPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GroupListViewPage extends StatefulWidget {
  @override
  _GroupListViewPageState createState() => _GroupListViewPageState();
}

class _GroupListViewPageState extends State<GroupListViewPage> {
  var _navIndex = 0;
  var _label = '';
  var _titles = ['Contacts', 'Map', 'Chat'];

  @override
  Widget build(BuildContext context){
    //firebaseからのデータをlistにまとめる
    //_dataDummyにデータを入れる
    dummy_list.createDummyList();
    _dataDummy = dummy_list.getDummyList();

    return Scaffold(
      /*
         appBar: AppBar(
        centerTitle: true,
        title: Text(
        "ToDo",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    backgroundColor: Color.fromRGBO(21, 112, 110, 1),
    ),

    */
      /*
        bottomNavigationBar: BottomNavigationBar(

    items: [
    BottomNavigationBarItem(
    icon: Icon(Icons.checklist, color: Color(0xFFF7F7EE)),
    title: Text('To do', style: TextStyle(color: Color(0xFFF7F7EE))),
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.watch_later, color: Color(0xFFF7F7EE)),
    title:
    Text('Timetable', style: TextStyle(color: Color(0xFFF7F7EE))),
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.today, color: Color(0xFFF7F7EE)),
    title: Text('Calender', style: TextStyle(color: Color(0xFFF7F7EE))),
    ),
    ],
    backgroundColor: Color(0xFF17706E),
    onTap: (int index) {
    setState(
    () {
    _navIndex = index;
    _label = _titles[index];
    },
    );
    },

    currentIndex: _navIndex,
    ),
    */

    body: GroupedListView<dynamic, String>(
    elements: _dataDummy,
    //groupBy: (element) => element['group'],
      groupBy: (element) => element['subject_name'],
    groupSeparatorBuilder: (String groupByValue) => Padding(
    //教科の部分
    padding: EdgeInsets.all(10),
    child: Container(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    Container(
    margin: EdgeInsets.only(top: 0),
    child: Row(
    children: [
    Text(
    '本日締め切り',
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    backgroundColor: Colors.orangeAccent,
    //↑本日締め切りの背景色
    ),
    ),
    Expanded(
    child: Container(
    margin: EdgeInsets.only(top: 0),
    child: Row(
    children: [
    Expanded(
    /*child:CheckboxListTile(
                                 controlAffinity: ListTileControlAffinity.platform,
                                 value: false,
                                 onChanged: (bool? value){},
                               ),*/
    //↑チェックボックス
    child: Text(
    '・',
    textAlign: TextAlign.end,
    style: TextStyle(
    fontSize: 27,
    ),
    ),
    ),
    Container(
    child: Text(
    groupByValue,
    textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold),
    //↑　教科名
    ),
    )
    ],
    ),
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    ),
    ),
    itemBuilder: (context, dynamic element) {
    return Card(
    elevation: 10,
    margin: EdgeInsets.symmetric(horizontal: 0, vertical: 1),
    child: Container(
    width: double.infinity,
    padding: EdgeInsets.all(10),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Expanded(
    //人の画像
    child: IconButton(
    onPressed: () {
    //人のアイコンが押されたときの処理をここにかく

    setState(() {

    });
    },
    icon: Icon(Icons.group_add_sharp),
    color: Colors.orangeAccent,
    iconSize: 55,
    /*icon(Icons.people_alt_outlined,
                            color: Colors.orangeAccent, size: 55),*/
    )
    // Iconの色は↑の(Colors)で(lightBlue,orangeAccent,redAccentとか色々)変更できます
    ),
    Expanded(
    //何人だしたかの部分
    child: Container(
    width: double.infinity,
    child: Row(
    children: [
    Text(
    //'${element['id']}',
    '${element['submission']}',
    style: TextStyle(
    fontSize: 18,
    ),
    ),
    //↑(id)に数値をお願いします
    Text(
    '/',
    style: TextStyle(
    fontSize: 18,
    ),
    ),
    Text(
    //'${element['id']}',
    '${element['menbers']}',
    style: TextStyle(
    fontSize: 18,
    ),
    ),
    //↑(id)に数値をお願いします
    ],
    ),
    )),
    Expanded(
    flex: 3,
    child: Container(
    padding: EdgeInsets.only(bottom: 5),
    //欄の大きさ（bottom)
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Padding(
    //課題名
    padding: EdgeInsets.only(left: 30, right: 10),
    child: Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Icon(Icons.menu_book,
    color: Colors.black, size: 20),
    Container(
    margin: EdgeInsets.only(left: 10),
    child: Text(
    //element['title'],
    element['task_name'],
    style: TextStyle(
    fontSize: 17, color: Colors.black),
    ),
    ),
    ],
    ),
    ),
      Padding(
        //締切日
        padding:
        EdgeInsets.only(left: 30, right: 10, top: 5),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.today_rounded,
                color: Colors.black, size: 20),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                //'${element['data']}',
                '${element['date']}',
                style: TextStyle(
                    fontSize: 17, color: Colors.red),
              ),
            ),
          ],
        ),
      ),
      Padding(
        //締切日
        padding:
        EdgeInsets.only(left: 30, right: 10, top: 5),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.alarm_sharp,
                color: Colors.black, size: 20),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                //'${element['albumId']}',
                '${element['time']}',
                style: TextStyle(
                    fontSize: 17, color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    ],
    ),
    ),
    ),
    ],
    ),
    ),
    );
    },
      itemComparator: (item1, item2) =>
          //item1['title'].compareTo(item2['title']),
      item1['task_name'].compareTo(item2['task_name']),
      // optional
      useStickyGroupSeparators: false,
      // optional
      floatingHeader: false,
      // optional
      order: GroupedListOrder.ASC, // optional
    ),
    );
  }
}