import 'package:flutter/material.dart';
import 'package:nnnn/about.dart';
import 'package:share/share.dart';
import 'package:nnnn/ahadis.dart';
import 'package:nnnn/nmaish.dart';

void main() {
  runApp(Hadis());
}

class Hadis extends StatefulWidget {
  const Hadis({super.key});
  @override
  State<Hadis> createState() => _HadisState();
}

class _HadisState extends State<Hadis> {
  String text = "Share the App";

  var malomat = Malomat(); ////////////////m


  List name = [' دو کلمه که نزد خداوند زیاد محبوب است', 'نخست حق مادر یا پدر', 'تامین نیاز زنان بیوه', 'رفت و امد به مسجد', 'کافر گفتن برادرش خویش', 'خواندن نمازهای پنجگانه و جمعه', 'توبه کردن قبل از طلوع افتاب', 'ثواب جاریه', 'دعوت به کار خیر', 'حرام بودن حق مسلمان بر مسلمان دیگر','حفظ ابروی برادر مسلمان'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            appBarTheme:
                AppBarTheme(iconTheme: IconThemeData(color: Colors.white))),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromRGBO(10, 45, 33, 1.0),
          appBar: AppBar(
            shape: Border.all(color: Colors.white70),
            backgroundColor: Color.fromRGBO(22, 50, 44, 0.8),
            actions: [
              PopupMenuButton(
                  color: Colors.white,
                  onSelected: (Value) {},
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          onTap: () {
                            Share.share(text);
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.share,
                                color: Colors.blueAccent,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(text, style: TextStyle(color: Colors.black)),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          onTap: () {
                            setState(() {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (aa) {
                                return About();
                              }));
                            });
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.info_outline,
                                color: Colors.blueAccent,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "About",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.exit_to_app,
                                color: Colors.blueAccent,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Exit",
                                  style: TextStyle(color: Colors.black)),
                            ],
                          ),
                        ),
                      ]),
            ],
            centerTitle: true,
            title: Text(
              "{  احادیث صحیح  }",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              decoration: BoxDecoration(
                  // boxShadow: <BoxShadow>[
                  //   BoxShadow(
                  //       color: Colors.white, offset: Offset(2, 2),
                  //     blurRadius: 8
                  //   ),
                  // ],
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(10, 80, 53, 1.0),
                    Color.fromRGBO(22, 44, 55, 0.8),
                  ]),
                  border: Border.all(color: Colors.white70),
                  borderRadius: BorderRadius.circular(10.0)),
              child: ListView.builder(
                itemCount: 11, // Number of items in the list
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.teal),
                          borderRadius: BorderRadius.circular(7.0)),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 7,
                        ),
                        tileColor: Color.fromRGBO(10, 80, 53, 1.0),

                        splashColor: Colors.white,
                        title: Text(
                          '${name[index++]}',
                          style: TextStyle(fontSize: 30, color: Colors.white70),
                        ),
                        // subtitle: Text(
                        //   'Subtitle for Item $index',
                        //   style: TextStyle(fontSize: 20, color: Colors.white70),
                        // ),
                        leading: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.mosque,
                            color: Colors.white,
                          ),
                        ), // Icon to the left of the title
                        trailing: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ), // Icon to the right of the title
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (aa) {
                            return Namaish(data: malomat.hadis[index]);
                          }));
                          // Action when the item is tapped
                          print('Tapped on Item $index');
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ));
  }
}
