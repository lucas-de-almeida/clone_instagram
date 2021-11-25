import 'package:flutter/material.dart';

class BottomPost extends StatelessWidget {

  const BottomPost({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Padding(
         padding: const EdgeInsets.only(top:10,left:8.0,right:8),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Container(
               child: Row(children: [
                 Padding(
                   padding: const EdgeInsets.only(right:16.0),
                   child: Icon(Icons.favorite_outline_rounded,color: Colors.white,),
                 ),
                 Padding(
                    padding: const EdgeInsets.only(right:16.0),
                   child: Icon(Icons.chat,color: Colors.white,),
                 ),
                 RotatedBox(quarterTurns: 3, child: Icon(Icons.send_outlined,color: Colors.white,))
               ],),
             ),
                 Icon(Icons.chat,color: Colors.white,),

           ],
         ),
       );
       
  }
}