import 'package:flutter/material.dart';

class ConstTsk extends StatefulWidget {
  const ConstTsk({super.key});

  @override
  State<ConstTsk> createState() => _ConstTskState();
}

class _ConstTskState extends State<ConstTsk> {
  TextEditingController firstname=TextEditingController();
  TextEditingController lasttname=TextEditingController();
  TextEditingController emailid=TextEditingController();
  TextEditingController age=TextEditingController();
  TextEditingController course=TextEditingController();
  TextEditingController plase=TextEditingController();
  TextEditingController phoneno=TextEditingController();
  GlobalKey<FormState> valkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:Center(
          child: Form(
            key: valkey,
            child: Column(
              children: [
                SizedBox(height: 100,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 167,
                      height: 60,
                      child: TextFormField(
                        validator: (val){
                          if(val!.isEmpty){
                            return "Enter First name";
                          }
                        },
                        controller: firstname,
                        style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                          labelText: "First Name",
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15
                          ),
                          border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          )
                        ),

                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      width: 167,
                      height: 60,
                      child: TextFormField(
                        validator: (val){
                          if(val!.isEmpty){
                            return "Enter Last name";
                          }
                        },
                        controller: lasttname,
                        style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                          labelText: "Last Name",
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15
                          ),
                          border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          )
                        ),

                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  width: 350,
                  height: 60,
                  child: TextFormField(
                    validator: (val){
                      if(val!.isEmpty){
                        return "Enter Email_id";
                      }
                    },
                    controller: emailid,
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      labelText: "Email_id",
                      labelStyle: TextStyle(
                        fontWeight:FontWeight.w500,fontSize: 15
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 167,
                      height: 60,
                      child: TextFormField(
                        validator: (val){
                          if(val!.isEmpty){
                            return "Enter age";
                          }
                        },
                        controller: age,
                        style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                            labelText: "Age",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15
                            ),
                            border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                            )
                        ),

                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      width: 167,
                      height: 60,
                      child: TextFormField(
                        validator: (val){
                          if(val!.isEmpty){
                            return "Enter course";
                          }
                        },
                        controller: course,
                        style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                            labelText: "Course",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15
                            ),
                            border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                            )
                        ),

                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  width: 350,
                  height: 60,
                  child: TextFormField(
                    validator: (val){
                      if(val!.isEmpty){
                        return "enter plase";
                      }
                    },
                    controller: plase,
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      labelText: "Plase",
                      labelStyle: TextStyle(
                        fontWeight:FontWeight.w500,fontSize: 15
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 350,
                  height: 60,
                  child: TextFormField(
                    validator: (val){
                      if(val!.isEmpty){
                        return "enter phone nO";
                      }
                    },
                    controller: phoneno,
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      labelText: "Phone No",
                      labelStyle: TextStyle(
                        fontWeight:FontWeight.w500,fontSize: 15
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 60,
                  width: 130,
                  child: ElevatedButton(onPressed: () {
                    if (valkey.currentState!.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OutPage(
                            // fname:firstname.text,

                          )));
                    }
                  },
                      child: Icon(Icons.navigate_next_sharp,size: 40,color: Colors.black,)),
                )
              ],
            ),
          ),
        ),),
    );
  }
}


class OutPage extends StatefulWidget {
  final fistname;
  final lastname;
  final emailid;
  final age;
  final course;
  final plase;
  final phoneno;

   OutPage({super.key, this.fistname,this.lastname, this.emailid, this.age, this.course, this.plase, this.phoneno,});

  @override
  State<OutPage> createState() => _OutPageState(this.fistname,this.lastname,this.emailid,this.age,this.course,this.plase,this.phoneno);
}

class _OutPageState extends State<OutPage> {
  var fname;
  var lname;
  var email;
  var age;
  var course;
  var plase;
  var phoneno;
  _OutPageState(fistname,lastname,emailid,age,course,place,phoneno);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
