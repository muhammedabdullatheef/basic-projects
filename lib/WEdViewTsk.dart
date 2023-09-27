import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'Webview.dart';

class MywedviewTSkhome extends StatefulWidget {
  const MywedviewTSkhome({super.key});

  @override
  State<MywedviewTSkhome> createState() => _MywedviewTSkhomeState();
}

class _MywedviewTSkhomeState extends State<MywedviewTSkhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           Container(
              width: 200,
              height: 60,
              child: ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyWebView()),
                  );
              }, child: Text("Flipkart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              ),
            ), Container(
              width: 200,
              height: 60,
              child: ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FuturaLabs()),
                  );
              }, child: Text("Futura Labs",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple[900]),
              ),
            ), Container(
              width: 200,
              height: 60,
              child: ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WIkipedia()),
                  );
              }, child: Text("Wikipedia",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              ),
            ), Container(
              width: 200,
              height: 60,
              child: ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const amazon()),
                  );
              }, child: Text("amazon",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
              ),
            ),
          ],
        ),
      )
    );
  }
}

class amazon extends StatefulWidget {
  const amazon({super.key});

  @override
  State<amazon> createState() => _amazonState();
}

class _amazonState extends State<amazon> {
  late WebViewController amcontrol;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    amcontrol=WebViewController();
    amcontrol.setJavaScriptMode(JavaScriptMode.unrestricted);
    amcontrol.loadRequest(Uri.parse("https://www.amazon.in/"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: amcontrol,),
    );
  }
}


class WIkipedia extends StatefulWidget {
  const WIkipedia({super.key});

  @override
  State<WIkipedia> createState() => _WIkipediaState();
}

class _WIkipediaState extends State<WIkipedia> {
  late WebViewController WIcontrol;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WIcontrol=WebViewController();
    WIcontrol.setJavaScriptMode(JavaScriptMode.unrestricted);
    WIcontrol.loadRequest(Uri.parse("https://www.wikipedia.org/"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller:WIcontrol ,),
    );
  }
}


class FuturaLabs extends StatefulWidget {
  const FuturaLabs({super.key});

  @override
  State<FuturaLabs> createState() => _FuturaLabsState();
}

class _FuturaLabsState extends State<FuturaLabs> {
  late WebViewController Flcontrol;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Flcontrol=WebViewController();
    Flcontrol.setJavaScriptMode(JavaScriptMode.unrestricted);
    Flcontrol.loadRequest(Uri.parse("https://thefuturalabs.com/"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: Flcontrol,),
    );
  }
}

