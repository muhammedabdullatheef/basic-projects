import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePageUi extends StatefulWidget {
  const ProfilePageUi({super.key});

  @override
  State<ProfilePageUi> createState() => _ProfilePageUiState();
}

class _ProfilePageUiState extends State<ProfilePageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),),
        leading: Icon(Icons.arrow_back_outlined,color: Colors.white,),
        backgroundColor: Colors.teal[400],
      ),
      body: Column(
        children: [
          Center(
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 80,
                  // backgroundImage: NetworkImage("https://www.lifeofpix.com/wp-content/uploads/2020/05/IMG_6153edit.jpg"),
                  backgroundImage: AssetImage("assets/images/20230530170555_IMG_0801.jpg"),
                ),

                Positioned(
                  top: 140,
                  left: 140,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.teal[400],
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white54,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Name"),
            subtitle: Text("this is not yourusername or pin."),
            trailing: Icon(Icons.edit),
          ),ListTile(
            leading: Icon(Icons.info_outline),
            title: Text("About"),
            subtitle: Text("."),
            trailing: Icon(Icons.edit),
          ),ListTile(
            leading: Icon(Icons.phone),
            title: Text("Phone"),
            subtitle: Text("+91 523542862"),
          ),
        ],
      ),

    );
  }
}
