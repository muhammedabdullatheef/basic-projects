import 'package:flutter/material.dart';

class Profile20 extends StatefulWidget {
  const Profile20({super.key});

  @override
  State<Profile20> createState() => _Profile20State();
}

class _Profile20State extends State<Profile20> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Center(
                child: CircleAvatar(
                  radius: 65,
                  backgroundImage: AssetImage("assets/images/my photo.jpg"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                "Muhammed Abdul Latheef",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            Text(
              "INTERN : FLUTTER",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.black38),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SptWid(img: "assets/images/email.png"),
                  SptWid(img: "assets/images/telegram.png"),
                  SptWid(img: "assets/images/insta.jpg"),
                  SptWid(img: "assets/images/in.png"),
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 80),
                child: Text(
                  "11",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 80),
                child: Text(
                  "+2",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Text(
                  "18",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Text(
                  "Posts",
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Text(
                  "Qulification",
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
              ),
              Text(
                "Age",
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 170,
                    child: Center(
                        child: Text(
                      "Message",
                      style: TextStyle(color: Colors.blue),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blue)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 50,
                    width: 170,
                    child: Center(
                        child: Text(
                      "Message",
                      style: TextStyle(color: Colors.white),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Posts(
                    img2:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKXCyvmYuVM-hNZlRzylOt2t8C-3kQ7FP8uQ&usqp=CAU',
                    widthof: MediaQuery.of(context).size.width / 3.5,
                  ),
                  Posts(
                    img2:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa1UYbQx4r5lpCgjflqYWB08bz4Ca8k0zHRw&usqp=CAU',
                    widthof: MediaQuery.of(context).size.width / 3.5,
                  ),
                  Posts(
                    img2:
                        'https://www.classicdriver.com/sites/default/files/styles/article_full/public/bildschirmfoto_2015-05-11_um_15.55.45.jpg?itok=wUlgeS76',
                    widthof: MediaQuery.of(context).size.width / 3.5,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Posts(
                  img2:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKXCyvmYuVM-hNZlRzylOt2t8C-3kQ7FP8uQ&usqp=CAU',
                  widthof: MediaQuery.of(context).size.width / 3.5,
                ),
                Posts(
                  img2:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKXCyvmYuVM-hNZlRzylOt2t8C-3kQ7FP8uQ&usqp=CAU',
                  widthof: MediaQuery.of(context).size.width / 3.5,
                ),
                Posts(
                  img2:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa1UYbQx4r5lpCgjflqYWB08bz4Ca8k0zHRw&usqp=CAU',
                  widthof: MediaQuery.of(context).size.width / 3.5,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Posts(
                  img2:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb9_oaIlE0bopNXmWWhPt4omffsyxH2cBeeNBL5AyJ94YEMFTeFne3t-FN0-HC_T_qevs&usqp=CAU',
                  widthof: MediaQuery.of(context).size.width / 3.5,
                ),
                Posts(
                  img2:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNt4VKTceCYf-n39HuJsGlr_RqSMO36KL5TQ&usqp=CAU',
                  widthof: MediaQuery.of(context).size.width / 3.5,
                ),
                Posts(
                  img2:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKXCyvmYuVM-hNZlRzylOt2t8C-3kQ7FP8uQ&usqp=CAU',
                  widthof: MediaQuery.of(context).size.width / 3.5,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Posts(
                    img2:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTXcQOCTY8hWp3A7_-xwBElYd5IGGzCf2mWw&usqp=CAU',
                    widthof: MediaQuery.of(context).size.width / 3.5,
                  ),
                  Posts(
                    img2:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKXCyvmYuVM-hNZlRzylOt2t8C-3kQ7FP8uQ&usqp=CAU',
                    widthof: MediaQuery.of(context).size.width / 3.5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SptWid extends StatelessWidget {
  const SptWid({
    super.key,
    required this.img,
  });

  final String img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 30,
        width: 30,
        child: Image(
          image: AssetImage(img),
        ),
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(30),
        // ),
      ),
    );
  }
}

class Posts extends StatelessWidget {
  const Posts({super.key, required this.img2, required this.widthof});

  final String img2;
  final double widthof;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 120,
        width: widthof,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Image(
          image: NetworkImage(img2),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
