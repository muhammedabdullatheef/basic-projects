import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedTsk extends StatefulWidget {
  const SharedTsk({super.key});

  @override
  State<SharedTsk> createState() => _SharedTskState();
}

class _SharedTskState extends State<SharedTsk> {
 late SharedPreferences prefer;
 String name ="";

TextEditingController Cntrol=TextEditingController();
Future<void> SharedPre(myname)async {
  prefer = await SharedPreferences.getInstance();
  prefer.setString("Myname", myname);

  setState(() {
    name=myname;
  });

}

Future<void> Pik()async {
  prefer= await SharedPreferences.getInstance();
  setState(() {
    name=prefer.getString("Myname") ??"";
  });
}
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Pik();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 300,
              height: 60,
              child: TextField(
                controller: Cntrol,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.black
                ),
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
            ElevatedButton(onPressed: (){
              SharedPre(Cntrol.text);
            }, child: Text("Submit"),),
            Text(name),
          ],
        ),
      ),
    );
  }
}
