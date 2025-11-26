import 'package:flutter/material.dart';

import '../models/book.dart';

class HomeCell extends StatelessWidget {
  final Book book;
  const HomeCell(this.book,{super.key});

  @override
  Widget build(BuildContext context) {
    // return Row(
    //   children: [
    //     Image.asset(  'assets/peroquet.jpg' , width:50,)
    //     ,
    //     const Column(
    //       children: [
    //         Text("name 2 "),
    //         Text("name 3 ")
    //       ],
    //     )
    //   ],
    // );
    return Card(
        child: Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              //SpaceAround or SpaceBetween
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //sizeBoxed
                children: [
                  ClipRRect(borderRadius: BorderRadius.circular(15),
                    child:
                    Image.asset(  this.book.image , width:50,)
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      //book name
                      Text(this.book.name , style: TextStyle(color:
                      Colors.black, fontSize: 50, fontWeight: FontWeight.bold),),
                      //book price
                      Text("${this.book.price} DT", style: TextStyle(color: Colors.black,
                          fontSize: 24, fontWeight: FontWeight.bold),)
                    ],
                  )
                ]
            )
        )
    )
    ;
  }
}