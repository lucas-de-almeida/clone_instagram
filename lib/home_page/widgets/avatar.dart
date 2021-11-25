import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  bool post;
   Avatar({Key? key,this.post=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 8),
      child: Stack(
        children: [
          Container(
            width: (!post)?75:40,
            height: (!post)?75:40,
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                Colors.pink,
                Colors.yellow,
              ], begin: Alignment.topRight, end: Alignment.bottomLeft),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          Positioned(
            top: (!post)?3:2,
            left: (!post)?3:2,
            right: (!post)?3:2,
            bottom: (!post)?3:2,
            child: Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          Positioned(
            top: (!post)?3:1,
            left: (!post)?3:1,
            right: (!post)?3:1,
            bottom: (!post)?3:1,
            child: Container(
              margin: const EdgeInsets.all(1),
              width: 60,
              height: 60,
              child: const Padding(
                padding: EdgeInsets.all(3.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
