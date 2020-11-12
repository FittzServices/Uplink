import 'package:flutter/material.dart';

class InforCardAnimation extends StatefulWidget {
  @override
  _InforCardAnimationState createState() => _InforCardAnimationState();
}

class _InforCardAnimationState extends State<InforCardAnimation> {
  var data = InfoModel.list.elementAt(0);
  
    @override
    Widget build(BuildContext context) {
      return Card(
        child: Container(
          // width: 100,
          // height: 1-,
          color: Colors.red,
          // child: Stack(
          //   children: [
          //     Row(
          //       children: [Icon(data.icon, size: 52,color: Colors.blue,)],
          //     ),
          //     Positioned(
          //       bottom:0,
          //       child: Container(
          //         width: 400,
          //         height: 170,
          //         padding: EdgeInsets.symmetric(horizontal: 16),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Text(data.title, style: TextStyle(
          //               fontSize: 24,
          //               color: Colors.black54,
          //             ),),
          //             Container(
          //               height: 1,
          //               width: double.infinity,
          //               color: Colors.black26,
          //               padding: EdgeInsets.symmetric(vertical: 12),
          //             ),
          //             Text(data.subTitle,style: TextStyle(
          //               fontSize: 24,
          //               color: Colors.black38,
          //             ),),
          //           ],
          //         ),
          //       ),
          //     )
          //   ],
          // ),
        ),
      );
    }
  }
  
  class InfoModel {
    static const list =[

    ];
}

// import 'package:flutter/material.dart';

// class Data {
//   static const cards = [
//     CardData(
//       title: 'Minions',
//       description:
//           'Minions is a 2015 American 3D computer-animated comedy film, serving as a spin-off prequel to the Despicable Me franchise.',
//       subtitle: 'Movie',
//       color: Colors.yellow,
//       imgUrl: 'assets/images/online.jpeg',
//     ),
//     CardData(
//       title: 'Robot',
//       description:
//           'A robot is a machine—especially one programmable by a computer— capable of carrying out a complex series of actions automatically.',
//       subtitle: 'A Machine',
//       color: Colors.blue,
//       imgUrl: 'assets/images/uplink2.png',
//     ),
//     CardData(
//       title: 'Angry Birds',
//       description:
//           'Angry Birds is a 2009 casual puzzle video game developed by Rovio Entertainment.',
//       subtitle: 'Movie / Game',
//       color: Colors.red,
//       imgUrl: 'assets/images/class.JPG',
//     ),
//     CardData(
//       title: 'Minions',
//       description:
//           'Minions is a 2015 American 3D computer-animated comedy film, serving as a spin-off prequel to the Despicable Me franchise.',
//       subtitle: 'Movie',
//       color: Colors.yellow,
//       imgUrl: 'assets/images/carousel5.jpeg',
//     ),
//     CardData(
//       title: 'Robot',
//       description:
//           'A robot is a machine—especially one programmable by a computer— capable of carrying out a complex series of actions automatically. ',
//       subtitle: 'A Machine',
//       color: Colors.blue,
//       imgUrl: 'assets/images/carousel1.jpeg',
//     ),
//     CardData(
//       title: 'Angry Birds',
//       description:
//           'Angry Birds is a 2009 casual puzzle video game developed by Rovio Entertainment. ',
//       subtitle: 'Movie / Game',
//       color: Colors.red,
//       imgUrl: 'assets/images/carousel2.jpeg',
//     ),
//   ];
// }

// class CardData {
//   final String title;
//   final String description;
//   final String imgUrl;
//   final String subtitle;
//   final Color color;

//   const CardData({
//     @required this.title,
//     @required this.description,
//     @required this.imgUrl,
//     @required this.subtitle,
//     @required this.color,
//   });
// }
