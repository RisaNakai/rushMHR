import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class ToDo_dummy_list{
  List dummyList = [];
  bool judge = true;

  Future<void> createDummyList() async{
    if(judge) {
      //firestoreのインスタンス化
      //usersコレクションを参照
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      CollectionReference usersRef = firestore.collection('users');

      DocumentSnapshot snapshot = await usersRef.doc('userDoc').get();
      var userSub = snapshot.get('subject');
      List subjectList = [];

      //subjectListに履修科目を格納する
      for (var i = 0; i < userSub.length; i++) {
        subjectList.add(userSub[i]);
      }

      List docList = [];
      //科目参照用のインスタンス
      FirebaseFirestore subject_firestore = FirebaseFirestore.instance;

      //各教科の課題を確認してdocListに格納する
      for (var i = 0; i < userSub.length; i++) {
        await subject_firestore.collection(subjectList[i]).get().then(
              (QuerySnapshot querySnapshot) =>
          {
            querySnapshot.docs.forEach(
                  (doc) {
                docList.add(doc.id);
              },
            ),
          },
        );
      }
      //List dummySub = [];

      CollectionReference taskRef;
      var _dateFormatter = new DateFormat("y/M/d", "ja_JP");
      DateTime dateTime;
      var now = DateTime.now();

      for (var i = 0; i < userSub.length; i++) {
        taskRef = firestore.collection(subjectList[i]);
        snapshot = await taskRef.doc(docList[i]).get();
        var date = snapshot.get('date');
        var menbers = snapshot.get('menbers');
        var submission = snapshot.get('submission');
        var subject_name = snapshot.get('subject_name');
        var task_name = snapshot.get('task_name');
        var time = snapshot.get('time');
        dateTime = _dateFormatter.parse(date);
        if(dateTime.isAtSameMomentAs(now)){
          var deadline = '本日締め切り';
        }else{
          var deadline = (dateTime
              .difference(now)
              .inDays);
        }

        //リストの作成
        var test = {
          "date": date,
          "subject_name": subject_name,
          "task_name": task_name,
          "menbers": menbers,
          "submission": submission,
          "time": time,
        };
        //リストに値を追加
        dummyList.add(test);
      }
      judge = false;
    }
  }

  //dummyListのgetter
  List getDummyList(){
    return this.dummyList;
  }
}