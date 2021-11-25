import 'package:flutter/material.dart';

class Comments extends StatelessWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10.0, left: 10),
            child: Text(
              '861 curtidas',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 10),
            child: Row(
              children: [
           const     Text(
                  'Nome do cidadão  ',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
             const   Text(
                  'Folow ',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                Text(
                  '@Lucasdealmeida ',
                  style: TextStyle(color: Colors.blue[200], fontSize: 12),
                ),
               const Text(
                  'for more! ',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
       const   Padding(
           padding: const EdgeInsets.only(top:5.0,left: 10),
            child: Text(
              'Ver todos os 3 comenários',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
