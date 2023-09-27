import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class ApiTsk extends StatefulWidget {
  const ApiTsk({super.key});

  @override
  State<ApiTsk> createState() => _ApiTskState();
}

class _ApiTskState extends State<ApiTsk> {
  GlobalKey<FormState> fkey=GlobalKey();
  TextEditingController namecontrol=TextEditingController();
  TextEditingController agecontrol=TextEditingController();

  Future<void>getdata(name,age)async{
    var res=await http.post(Uri.parse("https://dummy.restapiexample.com/api/v1/create"),
    body: {
      "name":name,
      "age":age
    });
    if(res.statusCode==200){
      print("sucsessfully registred ${res.body}");
    }else{
      throw Exception("404 Error");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Form(
        key: fkey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator:  (value) {
                  if(value!.isEmpty){
                    return "Enter Name";
                  }
                },
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),
               labelText: "Name",
               border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)) ),

              ),
              SizedBox(height: 30,),
              TextFormField(
                validator:  (value) {
                  if(value!.isEmpty){
                    return "Enter Age";
                  }
                },
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),
               labelText: "Age",
               border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)) ),

              ),
              SizedBox(height: 30,),
              Center(
                child: ElevatedButton(onPressed: (){
                  if(fkey.currentState!.validate()){
                    getdata(namecontrol.text,agecontrol.text);
                  }
                },child: Text("Register"),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
