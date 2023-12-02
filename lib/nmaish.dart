
import 'package:flutter/material.dart';
import 'package:nnnn/mainH.dart';


class Namaish extends StatelessWidget {

  final String data;
  Namaish({required this.data});
  // const Namaish({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(

      backgroundColor: Color.fromRGBO(10, 45, 33, 1.0),
      appBar: AppBar(

        shape: Border.all(color: Colors.white70),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(22, 50, 44, 0.8),
        title: Text('{{   احادیث صحیح   }}',style: TextStyle(color: Colors.white,fontSize: 30),),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color.fromRGBO(10, 45, 33, 1),Color.fromRGBO(10, 55,44,1),]),
            border: Border.all(color: Colors.white70),
            borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 577,
                width:500,

                  child: Text( textDirection: TextDirection.rtl,data,style: TextStyle(color: Colors.white,fontSize: 20),)),
            ),
          ],
        ),
      ),
    );
  }
}
