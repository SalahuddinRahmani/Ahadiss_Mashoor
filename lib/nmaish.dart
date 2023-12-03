import 'package:flutter/material.dart';
import 'package:nnnn/mainH.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://aqeedeh.com/book/view/280/%D8%AA%D8%B1%D8%AC%D9%85%D9%87%20%D8%B5%D8%AD%DB%8C%D8%AD%20%D8%A8%D8%AE%D8%A7%D8%B1%DB%8C');

class Namaish extends StatelessWidget {
  final String data;
  Namaish({required this.data});
  // const Namaish({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(10, 45, 33, 1.0),
      appBar: AppBar(
        shape: Border.all(color: Colors.white70),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(5, 33, 44, 1),
        title: Text(
          '{{   احادیث صحیح   }}',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(10, 80, 88, 1.0),
                Color.fromRGBO(22, 34, 42, 1),

              ],
            ),
            border: Border.all(color: Colors.white70),
            borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                  height: 577,
                  width: 500,
                  child: Text(
                    textDirection: TextDirection.rtl,
                    data,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ),
            Align(
              alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(0.5),
                          spreadRadius: 7,
                          blurRadius: 5,
                          offset: Offset(2, 5),
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      border: Border.all(
                          width: 1.0, color: Color.fromRGBO(22, 77, 55, 1)),
                      gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(58, 96, 115, 1),
                        Color.fromRGBO(22, 34, 42, 1),
                      ],
                    ),),
                    child: MaterialButton(
              height: 55,
                      // color:   Color.fromRGBO(10, 55,70, 1.0),
              onPressed: _launchUrl,
              child: Text('! معلومات بیشتر',style: TextStyle(color: Colors.white),),
            ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
