import 'package:flutter/material.dart';
import 'package:nnnn/mainH.dart';
Color color=Color.fromRGBO(10, 45, 33, 1.0);
Color color1=Colors.white;

enum Gender{
  sColor,
  mColor,
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: About(),
  ));
}

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  var text = "Salahuddin";
  var name="Salahuddin ";
  var birth="Birthday :  1380/4/4";
  var phone="093794317864";
  var  email="salahuddinrahmani4040@gmail.com";
  var lastName=" Rahmani";
  var telegram="tm.salahuddin4079";
  var edgucation="Edgucation : Egineer Of Arcitictuer";
  // Gender? selectedGender;

 Gender selectedGender =Gender.sColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(10, 45, 33, 1.0),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:Color.fromRGBO(4, 80, 35, 1),
        actions: [

          IconButton(onPressed: () {
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (tt){
                return Hadis();
              }));
            });
          }, icon: Icon(Icons.reply_all)),
        ],
        title: Container(
          decoration: BoxDecoration(boxShadow: <BoxShadow>[
            BoxShadow(color: Colors.white70,offset: Offset(2,2),blurRadius: 66)
          ]),
          child: Text(
            "About us",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height:20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender =Gender.sColor;

                      text = "Salahuddin";
                      name="Salahuddin";
                      lastName=" Rahmani";
                      birth="Birthday :  1380/4/4";
                      phone="093794317864";
                      email="salahuddinrahmani4040@gmail.com";
                      telegram= "tm.salahuddin4079";
                      edgucation="Edgucation : Egineer Of Arcitictuer";
                    });


                  },
                  child: Container(
                    decoration:BoxDecoration(shape: BoxShape.circle,
                        boxShadow: <BoxShadow>[
                          BoxShadow(color: Colors.white70,offset: Offset(2, 2),blurRadius: 15)
                        ]),
                    child: CircleAvatar(
                      backgroundColor: selectedGender==Gender.sColor ? color1:color,
                      radius: 80,
                      child: CircleAvatar(backgroundImage: AssetImage("images/BeautyPlus_۲۰۲۳۰۷۱۵۲۰۱۶۵۰۰۵۲_save.jpg"),
                        radius: 70,

                      ),
                    ),
                  )),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = Gender.mColor;

                    text = "Saeed Mohamad";
                    name="Saeed Mohamad";
                    lastName="Sadaat";
                    birth="Birthday :  1379/8/5";
                    phone="093729720194";
                    email="mohad@gmail.com";
                    telegram= "tm.mohamajhja";
                    edgucation="Edgucation : Softwer Computer scince";
                  });
                },
                child: Container(
                  decoration:BoxDecoration(shape: BoxShape.circle,
                      boxShadow: <BoxShadow>[
                        BoxShadow(color: Colors.white70,offset: Offset(2, 2),blurRadius: 15)
                      ]),
                  child: CircleAvatar(
                    backgroundColor:selectedGender==Gender.mColor ? color1:color,
                    radius: 80,
                    child: CircleAvatar(backgroundImage: AssetImage("images/3433882706426402~2.jpg"),
                      radius: 70,

                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 44,),
          Text(text,style: TextStyle(
              fontSize: 44, fontFamily: "font1", color: Colors.white,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,child: Divider(color: Colors.white,),width: 300,),
          SizedBox(height: 10,child: Divider(color: Colors.white,),width: 200,),
          SizedBox(height: 10,child: Divider(color: Colors.white,),width: 100,),
          SizedBox(height: 10,child: Divider(color: Colors.white,),width: 50,),

          SizedBox(height: 33,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [


                Container(
                  decoration: BoxDecoration(
                    // gradient:  LinearGradient(colors: [Colors.indigoAccent,Colors.cyan,]),
                      border: Border.all(color: Colors.teal),
                      borderRadius: BorderRadius.circular(5.0)),
                  height: 70,
                  child: ListTile(
                    tileColor: Color.fromRGBO(10, 80, 53, 1.0),
                    leading: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 44,
                    ),
                    title: Text(
                      name,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),

                SizedBox(
                  height: 3,
                ),
                Container(
                  decoration: BoxDecoration(
                    // gradient:  LinearGradient(colors: [Colors.indigoAccent,Colors.cyan,]),
                      border: Border.all(color: Colors.teal),
                      borderRadius: BorderRadius.circular(5.0)),
                  height: 70,
                  child: ListTile(
                    tileColor: Color.fromRGBO(10, 80, 53, 1.0),
                    leading: Icon(
                      Icons.account_box_outlined,
                      color: Colors.white,
                      size: 44,
                    ),
                    title: Text(
                      lastName ,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  decoration: BoxDecoration(
                    // gradient:  LinearGradient(colors: [Colors.indigoAccent,Colors.cyan,]),
                      border: Border.all(color: Colors.teal),
                      borderRadius: BorderRadius.circular(5.0)),
                  height: 70,
                  child: ListTile(
                    tileColor: Color.fromRGBO(10, 80, 53, 1.0),
                    leading: Icon(
                      Icons.phone_android,
                      color: Colors.white,
                      size: 44,
                    ),
                    title: Text(
                      phone,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  decoration: BoxDecoration(
                    // gradient:  LinearGradient(colors: [Colors.indigoAccent,Colors.cyan,]),
                      border: Border.all(color: Colors.teal),
                      borderRadius: BorderRadius.circular(5.0)),
                  height: 70,
                  child: ListTile(
                    tileColor: Color.fromRGBO(10, 80, 53, 1.0),
                    leading: Icon(
                      Icons.badge_outlined,
                      color: Colors.white,
                      size: 44,
                    ),
                    title: Text(
                      birth,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(

                  decoration: BoxDecoration(
                    // gradient:  LinearGradient(colors: [Colors.indigoAccent,Colors.cyan,]),
                      border: Border.all(color: Colors.teal),
                      borderRadius: BorderRadius.circular(5.0)),
                  height: 70,
                  child: ListTile(
                    tileColor: Color.fromRGBO(10, 80, 53, 1.0),
                    leading: Icon(
                      Icons.engineering,
                      color: Colors.white,
                      size: 44,
                    ),
                    title: Text(
                      edgucation,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  decoration: BoxDecoration(
                    // gradient:  LinearGradient(colors: [Colors.indigoAccent,Colors.cyan,]),
                      border: Border.all(color: Colors.teal),
                      borderRadius: BorderRadius.circular(5.0)),
                  height: 70,
                  child: ListTile(
                    tileColor: Color.fromRGBO(10, 80, 53, 1.0),
                    leading: Icon(
                      Icons.telegram,
                      color: Colors.white,
                      size: 44,
                    ),
                    title: Text(
                      telegram,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  decoration: BoxDecoration(
                    // gradient:  LinearGradient(colors: [Colors.indigoAccent,Colors.cyan,]),
                      border: Border.all(color: Colors.teal),
                      borderRadius: BorderRadius.circular(5.0)),
                  height: 70,
                  child: ListTile(
                    tileColor: Color.fromRGBO(10, 80, 53, 1.0),
                    leading: Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                      size: 44,
                    ),
                    title: Text(
                      email,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),



              ],
            ),
          ),
        ],
      ),
    );
  }
}
