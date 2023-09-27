import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile2 extends StatefulWidget {
  @override
  State<Profile2> createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  TextEditingController emailcontroller = TextEditingController();

  GlobalKey<FormState> fkey = GlobalKey();

  // const Profile2({super.key});
  String gender = "male";
  String qualification = "+2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up",
          style: TextStyle(
              fontWeight: FontWeight.w800, fontSize: 30, color: Colors.white),
        ),
        backgroundColor: Colors.purple[900],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: fkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: CircleAvatar(
                    // backgroundColor: Colors.grey,
                    radius: 70,
                    backgroundImage:
                        AssetImage("assets/images/IMG_20230802_100851.jpg"),
                    // child: Icon(Icons.person, size: 80),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 2, bottom: 20, top: 20),
                    child: Container(
                      width: 160,
                      height: 60,
                      child: TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter an first name";
                          }
                        },
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                        decoration: InputDecoration(
                            labelText: "First name",
                            labelStyle: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, bottom: 20, top: 20),
                    child: Container(
                      width: 160,
                      height: 60,
                      child: TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter an last name";
                          }
                        },
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                        decoration: InputDecoration(
                            labelText: "Last name",
                            labelStyle: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 350,
                height: 60,
                child: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter an  place";
                    }
                  },
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  decoration: InputDecoration(
                      labelText: "Place",
                      labelStyle: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 350,
                height: 60,
                child: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter an valid email id";
                    }
                  },
                  controller: emailcontroller,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  decoration: InputDecoration(
                      labelText: "Email_ID",
                      labelStyle: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Row(
                children: [
                  RadioMenuButton(
                      value: "male",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },
                      child: Text("Male")),
                  RadioMenuButton(
                      value: "female",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },
                      child: Text("Female")),
                  RadioMenuButton(
                      value: "other",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },
                      child: Text("other")),
                ],
              ),
              Row(
                children: [
                  RadioMenuButton(
                      value: "PG",
                      groupValue: qualification,
                      onChanged: (value) {
                        setState(() {
                          qualification = value!;
                        });
                      },
                      child: Text("PG")),
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
                      value: "+2",
                      groupValue: qualification,
                      onChanged: (value) {
                        setState(() {
                          qualification = value!;
                        });
                      },
                      child: Text("+2")),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 350,
                height: 120,
                child: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter your phone no";
                    }
                  },
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  decoration: InputDecoration(
                      labelText: "Phone no",
                      labelStyle: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  keyboardType: TextInputType.phone,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 200,
                  height: 60,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  child: ElevatedButton(
                    onPressed: () {
                      if (fkey.currentState!.validate()) {
                        print(emailcontroller.text);
                      }
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("Already have an account?"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4, left: 2),
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
