import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeydTsk extends StatefulWidget {
  const DeydTsk({super.key});

  @override
  State<DeydTsk> createState() => _DeydTskState();
}

class _DeydTskState extends State<DeydTsk> {
  bool loding = true;
  // bool show = true;
  int Number = 20;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    count();
  }

  void count() {
    Future.delayed(Duration(seconds: 1), () {
      if (Number > 0) {
        setState(() {
          Number--;
        });
        count();
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => TimeOut()));
      }
    });
  }

  TextEditingController numcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController mmcontroller = TextEditingController();
  TextEditingController yycontroller = TextEditingController();
  TextEditingController cvvcontroller = TextEditingController();

  GlobalKey<FormState> fkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: fkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Stack(
                children: [
                  Container(
                    height: 210,
                    width: 350,
                    child: Center(
                        child: Container(
                            width: 350,
                            height: 210,
                            child: Image(
                              image: NetworkImage("https://shorturl.at/sJOW2"),
                              fit: BoxFit.fill,
                            ))),
                  ),
                  AnimatedPositioned(
                      top: loding ? -100 : 80,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 145),
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ),
                      duration: Duration(milliseconds: 500))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 60,
                width: 350,
                child: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter your card number";
                    }
                  },
                  controller: numcontroller,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black54),
                    labelText: "CARD NUMBER",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),

                  keyboardType: TextInputType.number,
                  // maxLength: 13,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: 350,
                child: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter card holder name";
                    }
                  },
                  controller: namecontroller,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black54),
                    labelText: "CARDHOLDER NAME",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: 110,
                    child: TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "valid mounth";
                        }
                      },
                      controller: mmcontroller,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black54),
                        labelText: "MM",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      keyboardType: TextInputType.number,
                      maxLength: 2,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 110,
                    child: TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "valid year";
                        }
                      },
                      controller: yycontroller,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black54),
                        labelText: "YY",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      keyboardType: TextInputType.number,
                      maxLength: 2,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 110,
                    child: TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter cvv";
                        }
                      },
                      controller: cvvcontroller,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black54),
                        labelText: "CVV",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        // suffixIcon: InkWell(
                        //     onTap: () {
                        //       setState(() {
                        //         show=!show;
                        //       });
                        //     },
                        //     child:show? Icon(
                        //       Icons.visibility,
                        //       color: Colors.black54,
                        //     ):Icon(Icons.visibility_off)),
                        // prefixIcon: Icon(CupertinoIcons.eye),
                      ),
                      obscureText: true,
                      // obscureText: show,
                      obscuringCharacter: "*",
                      keyboardType: TextInputType.number,
                      maxLength: 3,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "TimeOut:",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                  Text(
                    "  $Number",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.red),
                  ),

                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 160,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        if (fkey.currentState!.validate()) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Sucsess()),
                          );
                        }
                      },
                      child: Text(
                        "PAY NOW",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[800]),
                    ),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: 160,
                    height: 60,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            loding = false;
                            numcontroller.clear();
                            namecontroller.clear();
                            mmcontroller.clear();
                            yycontroller.clear();
                            cvvcontroller.clear();
                          });
                          Future.delayed(Duration(seconds: 3), () {
                            setState(() {
                              loding = true;
                            });
                          });
                        },
                        child:
                    Text("Clear",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[800]),
                    ),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Sucsess extends StatelessWidget {
  const Sucsess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
          image: NetworkImage("https://shorturl.at/knD13"),
        ),
      ),
    );
  }
}

class TimeOut extends StatelessWidget {
  const TimeOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image(
        image: NetworkImage("https://shorturl.at/hnLN2"),
      )),
    );
  }
}
