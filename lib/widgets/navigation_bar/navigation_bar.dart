import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class NavigationBar extends StatefulWidget {
  NavigationBar({Key key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Color(0xff4267b2), width: 3.0)),
          boxShadow: [
            BoxShadow(
                color: Color(0xffcccccc), blurRadius: 5, offset: Offset(1, 0))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 235,
                height: 35,
                alignment: Alignment(0.0, 0.0),
                child: Image.asset('assets/logo.png'),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  _NavBarItem('ทดสอบ 1'),
                  SizedBox(
                    width: 60,
                  ),
                  _NavBarItem('About'),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                Container(
                  height: 40,
                  child: LiteRollingSwitch(
                    value: isSwitched,
                    textOn: 'Admin',
                    textOff: 'User',
                    colorOn: Colors.indigo[400],
                    colorOff: Colors.teal[700],
                    textSize: 20,
                    onChanged: (value) {
                      isSwitched = value;
                      print(isSwitched);
                    },
                    animationDuration: Duration(milliseconds: 400),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  color: Colors.indigo[400],
                  icon: Icon(Icons.settings),
                  iconSize: 30,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// class NavigationBar extends StatelessWidget {
//   bool isSwitched = true;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 54,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           border: Border(top: BorderSide(color: Color(0xff4267b2), width: 3.0)),
//           boxShadow: [
//             BoxShadow(
//                 color: Color(0xffcccccc), blurRadius: 5, offset: Offset(1, 0))
//           ]),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Row(
//             children: <Widget>[
//               Container(
//                 width: 235,
//                 alignment: Alignment(0.0, 0.0),
//                 child: Image.asset('assets/logo.png'),
//               ),
//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   _NavBarItem('ทดสอบ 1'),
//                   SizedBox(
//                     width: 60,
//                   ),
//                   _NavBarItem('About'),
//                 ],
//               )
//             ],
//           ),
//           Row(
//             children: <Widget>[
//               Switch(
//                 value: isSwitched,
//                 onChanged: (value) {
//                   isSwitched = value;
//                   print(isSwitched);
//                 },
//                 activeTrackColor: Colors.lightGreenAccent,
//                 activeColor: Colors.green,
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18),
    );
  }
}
