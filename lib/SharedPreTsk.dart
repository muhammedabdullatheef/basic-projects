import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TaskShared extends StatefulWidget {
  const TaskShared({super.key});

  @override
  State<TaskShared> createState() => _TaskSharedState();
}

class _TaskSharedState extends State<TaskShared> {
  late SharedPreferences prefer;
  String msg = "";
  bool login = false;


  Future<void> setData(bool MSG) async {
    prefer = await SharedPreferences.getInstance();
    prefer.setBool("Msg", MSG);
    setState(() {
    bool msg=MSG;
    });
  }
  Future<void> getdata()async {
    prefer= await SharedPreferences.getInstance();
    prefer.getBool("Msg");
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                ElevatedButton(
                    onPressed: () {
                      login = true;
                      setData(true);
                      msg = "you are login";
                    },
                    child: Text("LogIn")),
                SizedBox(width: 25,),
                ElevatedButton(
                    onPressed: () {
                      setData(false);
                      msg = "you are logout";
                    },
                    child:

                    Text("LogOut")),
              ]),
            ),
            login?Text(msg,style: TextStyle(fontSize: 30,fontWeight:  FontWeight.w500),):Text(msg,style: TextStyle(fontSize: 30,fontWeight:  FontWeight.w500),),
          ],
        ),
      ),
    );
  }
}
