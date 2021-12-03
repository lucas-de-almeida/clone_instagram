// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_clone/home_page/widgets/avatar.dart';
import 'package:instagram_clone/home_page/widgets/bottom_post.dart';
import 'package:instagram_clone/home_page/widgets/comments.dart';
import 'package:instagram_clone/home_page/widgets/head_post.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: MediaQuery.of(context).size.height * 0.80,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeadPost(),
              Icon(
                Icons.auto_awesome_motion,
                color: Colors.white,
              ),
            ],
          ),
          Divider(
            color: Colors.white,
          ),
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 0.55,
            width: MediaQuery.of(context).size.width,
          ),
          //BottomPost(),
          //Comments()
        ],
      ),
    );
  }
}
