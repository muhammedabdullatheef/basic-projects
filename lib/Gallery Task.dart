import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class GalleryTsk extends StatefulWidget {
  const GalleryTsk({super.key});

  @override
  State<GalleryTsk> createState() => _GalleryTskState();
}

class _GalleryTskState extends State<GalleryTsk> {
  File? img;
  Future<void> ImagePic2() async {
    var pic = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      img = File(pic!.path);
      images.add(File(pic!.path));
    });
  }

  List<File> images = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery"),
        actions: [
          PopupMenuButton(
              color: Colors.black,
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(child: Text("Edit",style: TextStyle(color: Colors.white),)),
                PopupMenuItem(child: Text("Settings",style: TextStyle(color: Colors.white),)),
              ]),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 2,crossAxisSpacing: 2),
              itemCount: images.length + 1,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          ImagePic2();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 6),
                          child: Container(
                            height: 110,
                            width: 110,
                            color: Colors.black12,

                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                        ),
                      ),
                    ],
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8.0,
                    ),
                    child: Container(
                      height: 70,
                      width: 70,
                      child: Image(
                        image: FileImage(images[index-1]!),
                      ),
                    ),
                  );
                }
              }),
        ),
      ),
    );
  }
}
