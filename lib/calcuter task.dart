import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class calculater extends StatelessWidget {
  const calculater({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 400,
        height: 900,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Container(
                  width: 400,
                  height: 200,
                  child: Center(
                    child: TextField(
                      maxLines: 3,
                      style: TextStyle(
                        fontSize: 40,fontWeight: FontWeight.w700,color: Colors.white
                      ),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
              ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14),
                        child: CircleAvatar(
                          backgroundColor: Colors.blueGrey.shade900,
                          radius: 30,
                          child: Text("C",style: TextStyle(fontSize: 30,color: Colors.white),),
                        ),
                      ),Padding(
                        padding: const EdgeInsets.all(14),
                        child: CircleAvatar(
                          backgroundColor: Colors.blueGrey.shade900,
                          radius: 30,
                          child: Text("%",style: TextStyle(fontSize: 30,color: Colors.white),),

                        ),
                      ),Padding(
                        padding: const EdgeInsets.all(14),
                        child: CircleAvatar(
                          backgroundColor: Colors.blueGrey.shade900,
                          radius: 30,
                          child: Icon(Icons.backspace_outlined,color: Colors.white,),

                        ),
                      ),Padding(
                        padding: const EdgeInsets.all(14),
                        child: CircleAvatar(
                          backgroundColor: Colors.blueGrey.shade900,
                          radius: 30,
                          child: Text("÷",style: TextStyle(fontSize: 30,color: Colors.white),),

                        ),
                      ),
                    ],
                  ),
                       Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(14),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blueGrey.shade900,
                                  radius: 30,
                                  child: Text("7",style: TextStyle(fontSize: 30,color: Colors.white),),
                                ),
                              ),Padding(
                                padding: const EdgeInsets.all(14),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blueGrey.shade900,
                                  radius: 30,
                                  child: Text("8",style: TextStyle(fontSize: 30,color: Colors.white),),
                                ),
                              ),Padding(
                                padding: const EdgeInsets.all(14),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blueGrey.shade900,
                                  radius: 30,
                                  child: Text("9",style: TextStyle(fontSize: 30,color: Colors.white),),
                                ),
                              ),Padding(
                                padding: const EdgeInsets.all(14),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blueGrey.shade900,
                                  radius: 30,
                                  child: Text("×",style: TextStyle(fontSize: 30,color: Colors.white),),
                                ),
                              ),
                            ],
                          ),Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(14),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blueGrey.shade900,
                                  radius: 30,
                                  child: Text("4",style: TextStyle(fontSize: 30,color: Colors.white),),
                                ),
                              ),Padding(
                                padding: const EdgeInsets.all(14),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blueGrey.shade900,
                                  radius: 30,
                                  child: Text("5",style: TextStyle(fontSize: 30,color: Colors.white),),
                                ),
                              ),Padding(
                                padding: const EdgeInsets.all(14),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blueGrey.shade900,
                                  radius: 30,
                                  child: Text("6",style: TextStyle(fontSize: 30,color: Colors.white),),
                                ),
                              ),Padding(
                                padding: const EdgeInsets.all(14),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blueGrey.shade900,
                                  radius: 30,
                                  child: Text("-",style: TextStyle(fontSize: 40,color: Colors.white),),
                                ),
                              ),
                            ],
                          ),Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(14),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blueGrey.shade900,
                                  radius: 30,
                                  child: Text("1",style: TextStyle(fontSize: 30,color: Colors.white),),
                                ),
                              ),Padding(
                                padding: const EdgeInsets.all(14),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blueGrey.shade900,
                                  radius: 30,
                                  child: Text("2",style: TextStyle(fontSize: 30,color: Colors.white),),
                                ),
                              ),Padding(
                                padding: const EdgeInsets.all(14),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blueGrey.shade900,
                                  radius: 30,
                                  child: Text("3",style: TextStyle(fontSize: 30,color: Colors.white),),
                                ),
                              ),Padding(
                                padding: const EdgeInsets.all(14),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blueGrey.shade900,
                                  radius: 30,
                                  child: Text("+",style: TextStyle(fontSize: 30,color: Colors.white),),
                                ),
                              ),
                            ],
                          ),Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(14),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blueGrey.shade900,
                                  radius: 30,
                                  child: Text("00",style: TextStyle(fontSize: 30,color: Colors.white),),
                                ),
                              ),Padding(
                                padding: const EdgeInsets.all(14),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blueGrey.shade900,
                                  radius: 30,
                                  child: Text("0",style: TextStyle(fontSize: 30,color: Colors.white),),
                                ),
                              ),Padding(
                                padding: const EdgeInsets.all(14),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blueGrey.shade900,
                                  radius: 30,
                                  child: Text(".",style: TextStyle(fontSize: 30,color: Colors.white),),
                                ),
                              ),Padding(
                                padding: const EdgeInsets.all(14),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 30,
                                  child: Text("=",style: TextStyle(fontSize: 30,color: Colors.white),),
                                ),
                              ),
                            ],
                          ),


            ]
          ),
        ),
      ),

    );
  }
}
