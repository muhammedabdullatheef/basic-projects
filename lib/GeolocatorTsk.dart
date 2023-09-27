import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Mylocaion extends StatefulWidget {
  const Mylocaion({super.key});

  @override
  State<Mylocaion> createState() => _MylocaionState();
}

class _MylocaionState extends State<Mylocaion> {
  Position? myposition;
  Future<Position> getlocation()async{
    LocationPermission position =await Geolocator.checkPermission();
    if(position==LocationPermission.denied){
      position= await Geolocator.requestPermission();
      if(position==LocationPermission.deniedForever){
        return Future.error("something want wrong");
      }
    }
    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Center(
                child: ElevatedButton(onPressed: ()async{
                  Position newposi = await getlocation();
                  setState(() {
                    myposition = newposi;
                  });
                }, child: Text("Get location")),
              ),
             myposition ==null?Text("No lacation"):Text("$myposition")
            ],
          ),
        ),
      ),
    );
  }
}
