import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  String gender="male";
  String qualification="+2";
  bool _ischecked= false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Futura Labs Sign Up Page "),
        backgroundColor: Colors.purple,
        actions: [
          PopupMenuButton(itemBuilder: (BuildContext context)=>[
            PopupMenuItem(child: Text("menu1")),
            PopupMenuItem(child: Text("menu2")),
            PopupMenuItem(child: Text("menu3")),
            PopupMenuItem(child: Text("menu4")),
      ])
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 70,
                child: Icon(Icons.person, size: 80),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: TextFormField(
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
              decoration:  InputDecoration(
                  labelText: "Name",
                  labelStyle: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),Padding(
            padding: const EdgeInsets.only(top: 10),
            child: TextFormField(
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
              decoration:  InputDecoration(
                  labelText: "Email_id",
                  labelStyle: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),Padding(
            padding: const EdgeInsets.only(top: 10),
            child: TextFormField(
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
              decoration:  InputDecoration(
                  labelText: "Phone no",
                  labelStyle: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Text("Select your gender:"),
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
          Text("Select your course:"),
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
            ]
          ),
              CheckboxMenuButton(value: _ischecked , onChanged: (value){
                setState(() {
                  _ischecked= value!;
                });
              }, child: Text("terms and conditions"),),

        ]
      ),
    );
  }
}
