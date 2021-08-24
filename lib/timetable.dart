import 'package:flutter/material.dart';

class Timetable extends StatefulWidget {
  @override
  _TimetableState createState() => _TimetableState();
}

class _TimetableState extends State<Timetable> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        //color: Colors.white,
        children: <Widget>[
          // Expanded(
          //   child: Center(
          //     child: Text(
          //       _label,
          //       style: TextStyle(fontSize: 24.0),
          //     ),
          //   ),
          // ),
          CustomPaint(
            painter: SquarePainter(),
            child: Container(
              //height: size.height,
            ),
          ),
          Positioned(
            top: 60.0,
            left: 60.0,
            child: Text(
              '月',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Positioned(
            top: 60.0,
            left: 130.0,
            child: Text(
              '火',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Positioned(
            top: 60.0,
            left: 200.0,
            child: Text(
              '水',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Positioned(
            top: 60.0,
            left: 270.0,
            child: Text(
              '木',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Positioned(
            top: 60.0,
            left: 340.0,
            child: Text(
              '金',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Positioned(
            top: 132.0,
            left: 15.0,
            child: Text(
              '1',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Positioned(
            top: 228.0,
            left: 15.0,
            child: Text(
              '2',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Positioned(
            top: 324.0,
            left: 15.0,
            child: Text(
              '3',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Positioned(
            top: 420.0,
            left: 15.0,
            child: Text(
              '4',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Positioned(
            top: 516.0,
            left: 15.0,
            child: Text(
              '5',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Positioned(
            top: 113.0,
            left: 43.0,
            child: Text(
              'キリスト教',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 128.0,
            left: 62.0,
            child: Text(
              '学Ｃ',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 161.0,
            left: 54.0,
            child: Text(
              '宮森 翼',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 113.0,
            left: 113.0,
            child: Text(
              'プログラミ',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 128.0,
            left: 120.0,
            child: Text(
              'ング上級',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 161.0,
            left: 119.0,
            child: Text(
              '高原 幸子',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 306.0,
            left: 113.0,
            child: Text(
              '情報科学演',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 321.0,
            left: 135.0,
            child: Text(
              '習Ａ',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 354.0,
            left: 118.0,
            child: Text(
              '藤門 宏之',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 402.0,
            left: 255.0,
            child: Text(
              'メディア表',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 417.0,
            left: 255.0,
            child: Text(
              '現の技法Ａ',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 450.0,
            left: 260.0,
            child: Text(
              '坂本 純一',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 409.0,
            left: 193.0,
            child: Text(
              '代数学Ⅱ',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 450.0,
            left: 194.0,
            child: Text(
              '道又 直',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 409.0,
            left: 50.0,
            child: Text(
              '解析学Ⅳ',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 450.0,
            left: 47.0,
            child: Text(
              '中村 寸伍',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 215.0,
            left: 123.0,
            child: Text(
              '幾何学Ⅰ',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 258.0,
            left: 118.0,
            child: Text(
              '中井 太郎',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 498.0,
            left: 184.0,
            child: Text(
              'ネットワー',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 513.0,
            left: 190.0,
            child: Text(
              'ク基礎論',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 546.0,
            left: 194.0,
            child: Text(
              '高原 仁',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 306.0,
            left: 325.0,
            child: Text(
              'データベー',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 321.0,
            left: 325.0,
            child: Text(
              'スシステム',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 354.0,
            left: 329.0,
            child: Text(
              '奥島 衣吹',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 210.0,
            left: 254.0,
            child: Text(
              '線形代数学',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 226.0,
            left: 279.0,
            child: Text(
              'Ⅲ',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Positioned(
            top: 258.0,
            left: 259.0,
            child: Text(
              '眞壁 花子',
              style: TextStyle(fontSize: 12),
            ),
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

    var path;

    for (var i = 0; i < 5; i++) {
      for (var j = 0; j < 5; j++) {
        if ((i==0&&(j==0||j==3)) || (i==1&&j<3) || (i==2&&2<j) || (i==3&&(j==1||j==3)) || (i==4&&j==2)) {
          paint.color = Color(0xFFFB7813).withOpacity(0.09);
          path = Path();
          path.moveTo(40 + (w / 6 + 5) * i, 100 + (h / 7 + 5) * j);
          path.lineTo(40 + (w / 6 + 5) * i, 100 + h / 7 + (h / 7 + 5) * j);
          path.lineTo(
              40 + w / 6 + (w / 6 + 5) * i, 100 + h / 7 + (h / 7 + 5) * j);
          path.lineTo(40 + w / 6 + (w / 6 + 5) * i, 100 + (h / 7 + 5) * j);
          path.close();
          canvas.drawPath(path, paint);
        }
      }
    }

    // 四角（外線）
    paint = new Paint()
      ..color = Colors.black.withOpacity(0.2)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    for (var i = 0; i < 5; i++) {
      for (var j = 0; j < 5; j++) {
        path = Path();
        path.moveTo(40 + (w / 6 + 5) * i, 100 + (h / 7 + 5) * j);
        path.lineTo(40 + (w / 6 + 5) * i, 100 + h / 7 + (h / 7 + 5) * j);
        path.lineTo(
            40 + w / 6 + (w / 6 + 5) * i, 100 + h / 7 + (h / 7 + 5) * j);
        path.lineTo(40 + w / 6 + (w / 6 + 5) * i, 100 + (h / 7 + 5) * j);
        path.close();
        canvas.drawPath(path, paint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}