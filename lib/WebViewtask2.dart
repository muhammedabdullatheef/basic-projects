import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWebViewTask extends StatefulWidget {
  const MyWebViewTask({super.key});

  @override
  State<MyWebViewTask> createState() => _MyWebViewTaskState();
}

class _MyWebViewTaskState extends State<MyWebViewTask> {
  // late SharedPreferences sharedprefer;
  // String link = "";
  // Future<void> shared(
  //   mylink,
  // ) async {
  //   sharedprefer = await SharedPreferences.getInstance();
  //   setState(() {
  //     sharedprefer.setString("MYLINK", mylink);
  //     link = mylink;
  //   });
  // }
  TextEditingController linkcontroller = TextEditingController();
  GlobalKey<FormState> fkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Form(
            key: fkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  height: 60,
                  child: TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter an Full Name";
                      }
                    },
                    controller: linkcontroller,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                        labelText: "Enter the link",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                    keyboardType: TextInputType.url,
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  width: 150,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      if (fkey.currentState!.validate()) {
                        // shared(linkcontroller.text);
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => WebPage(url:linkcontroller.text,)));
                      }
                    },
                    child: Text(
                      "Search",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WebPage extends StatefulWidget {
  final url;
  const WebPage({super.key,required this.url});

  @override
  State<WebPage> createState() => _WebPageState(this.url);
}

class _WebPageState extends State<WebPage> {
  late WebViewController linkcontrol;
  var _url;
  _WebPageState(this._url);
  // late SharedPreferences sharedprefer;
  // String link ="";
  // Future<void> getlink() async {
  //   var sharedprefer = await SharedPreferences.getInstance();
  //   setState(() {
  //    link = sharedprefer.getString("MYLINK")??"";
  //   });
  // }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    linkcontrol = WebViewController();
    linkcontrol.setJavaScriptMode(JavaScriptMode.unrestricted);
    linkcontrol.loadRequest(Uri.parse(this._url));
    // getlink();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(
        controller: linkcontrol,
      ),
    );
  }
}
