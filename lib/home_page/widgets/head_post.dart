import 'package:flutter/material.dart';
import 'package:instagram_clone/home_page/widgets/avatar.dart';

class HeadPost extends StatelessWidget {

  const HeadPost({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Container(
         child: Row(
           children: [Avatar(
                post: true,
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const  Text(
                      'Nome do cidadão',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
           const         Text(
                      'Alguma informação extra',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),],
         ),
       );
  }
}