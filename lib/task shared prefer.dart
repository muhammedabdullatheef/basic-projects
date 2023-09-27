import 'dart:io';

import 'package:app/stack.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TskSrdPfr extends StatefulWidget {
  const TskSrdPfr({super.key});

  @override
  State<TskSrdPfr> createState() => _TskSrdPfrState();
}

class _TskSrdPfrState extends State<TskSrdPfr> {
  String qualification = "+2";
  String course = "Flutter";
  late SharedPreferences preferance;
  String name = "";
  String email = "";
  String phoneno = "";
  String age = "";
  String my_qualification="";

  Future<void> SharedPre(myname, myemail, myphoneno, myage,myqualification,mycourse) async {
    preferance = await SharedPreferences.getInstance();

    setState(() {
      preferance.setString("Myname", myname);
      preferance.setString("Myemail", myemail);
      preferance.setString("Myphoneno", myphoneno);
      preferance.setString("Myage", myage);
      preferance.setString("Myqualification", myqualification);
      preferance.setString("Mycourse", mycourse);
      name = myname;
      email = myemail;
      phoneno = myphoneno;
      age = myage;
      qualification =myqualification;
      course = mycourse;
    });
  }

  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phonenocontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  GlobalKey<FormState> fkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(
        //   "SingUp",
        //   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
        // ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 30,
        ),
        backgroundColor: Colors.purple[900],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: fkey,
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Image(
                    image: AssetImage("assets/images/futuralabs.jpg"),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 340,
                height: 60,
                child: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter an Full Name";
                    }
                  },
                  controller: namecontroller,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                      labelText: "Name",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 340,
                height: 60,
                child: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter an Email_Id";
                    }
                  },
                  controller: emailcontroller,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    labelText: "Email id",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 340,
                height: 60,
                child: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter an Full Phone no";
                    }
                  },
                  controller: phonenocontroller,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    labelText: "Phone no",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, right: 15, left: 10),
                    child: Container(
                      width: 100,
                      height: 60,
                      child: TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter an Age";
                          }
                        },
                        controller: agecontroller,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          labelText: "Age",
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Qualification",
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          RadioMenuButton(
                              value: "+2",
                              groupValue: qualification,
                              onChanged: (value) {
                                setState(() {
                                  qualification = value!;
                                });
                              },
                              child: Text("+2")),
                          RadioMenuButton(
                              value: "UG",
                              groupValue: qualification,
                              onChanged: (value) {
                                setState(() {
                                  qualification = value!;
                                });
                              },
                              child: Text("UG")),
                          RadioMenuButton(
                              value: "PG",
                              groupValue: qualification,
                              onChanged: (value) {
                                setState(() {
                                  qualification = value!;
                                });
                              },
                              child: Text("PG")),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, right: 295),
                child: Text(
                  "Course",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                      fontSize: 15),
                ),
              ),
              Row(
                children: [
                  RadioMenuButton(
                      value: "Full Stack",
                      groupValue: course,
                      onChanged: (value) {
                        setState(() {
                          course = value!;
                        });
                      },
                      child: Text("Full Stack")),
                  RadioMenuButton(
                      value: "Mern Stack",
                      groupValue: course,
                      onChanged: (value) {
                        setState(() {
                          course = value!;
                        });
                      },
                      child: Text("Mern Stack")),
                ],
              ),
              Row(
                children: [
                  RadioMenuButton(
                      value: "Flutter",
                      groupValue: course,
                      onChanged: (value) {
                        setState(() {
                          course = value!;
                        });
                      },
                      child: Text("Flutter")),
                  RadioMenuButton(
                      value: "UI/UX",
                      groupValue: course,
                      onChanged: (value) {
                        setState(() {
                          course = value!;
                        });
                      },
                      child: Text("UI/UX")),
                ],
              ),
              Container(
                width: 150,
                height: 60,
                child: ElevatedButton(
                    onPressed: () async{
                      if (fkey.currentState!.validate()) {
                        SharedPre(namecontroller.text,emailcontroller.text, phonenocontroller.text,agecontroller.text,qualification,course);
                        // preferance=await SharedPreferences.getInstance();
                        // preferance.setString("Myname", namecontroller.text);
                        // preferance.setString("Myemail", emailcontroller.text);
                        // preferance.setString("Myphoneno", phonenocontroller.text);
                        // preferance.setString("Myage", agecontroller.text);
                        // preferance.setString("Myqualification", qualification);
                        // preferance.setString("Mycourse", course);
                        namecontroller.clear();
                        emailcontroller.clear();
                        phonenocontroller.clear();
                        agecontroller.clear();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResultPage()),
                        );
                      }
                    },
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  String name = "";
  String email = "";
  String phoneno = "";
  String age = "";
  String myqualification="";
  String mycourse="";

  Future<void> Pik() async {
    var preferance = await SharedPreferences.getInstance();
    setState(() {
      name = preferance.getString("Myname") ?? "";
      email = preferance.getString("Myemail") ?? "";
      phoneno = preferance.getString("Myphoneno") ?? "";
      age = preferance.getString("Myage") ?? "";
      myqualification = preferance.getString("Myqualification") ?? "";
      mycourse = preferance.getString("Mycourse") ?? "";
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Pik();
  }

  File? myimage;
  Future<void> ImagePic() async {
    var pic = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      myimage = File(pic!.path);
    });
  }

  String qualification = "+2";
  String course = "Flutter";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            // Center(
            //   child: Container(
            //     width: 100,
            //     height: 100,
            //     child: Image(
            //       image: AssetImage("assets/images/futuralabs.jpg"),
            //     ),
            //   ),
            // ),
            Center(
              child: Stack(
                children: [
                  myimage == null
                      ? CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.black12,
                    child: Center(
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 100,
                        )),
                  )
                      : CircleAvatar(
                    radius: 60,
                    backgroundImage: FileImage(myimage!),
                  ),
                  Positioned(
                    top: 80,
                    left: 80,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.purple[900],
                      child: InkWell(
                        onTap: () {
                          ImagePic();
                        },
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white54,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Name:",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black54),),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Container(
                width: 340,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 15),
                  child: Text(name,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Email Id:",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black54),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 10),
              child: Container(
                width: 340,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 15),
                  child: Text(email,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Phone no:",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black54),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Container(
                width: 340,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15,left: 15),
                  child: Text(phoneno,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Age:",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black54),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Container(
                width: 340,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 15),
                  child: Text(age,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Qualification:",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black54),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Container(
                width: 340,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 15),
                  child: Text(myqualification,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Course:",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black54),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Container(
                width: 340,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 15),
                  child: Text(mycourse,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all()),
              ),
            ),
            SizedBox(height: 25,),
            Center(
              child: Container(
                width: 150,
                height: 60,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "LogOut",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    )),
              ),
            ),
            SizedBox(height: 40,),
        ]
      ),
      ),
    );
  }
}
