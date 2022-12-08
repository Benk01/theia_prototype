import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_application/Home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  IconData icondata = Icons.volume_up;
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(minimumSize: const Size(350, 80));
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Row(
        children: [
          Text("Login"),
          Padding(
              padding: EdgeInsets.only(left: 190),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      if (icondata == Icons.volume_up) {
                        icondata = Icons.volume_off;
                      } else {
                        icondata = Icons.volume_up;
                      }
                    });
                  },
                  icon: Icon(icondata, size: 40, color: Colors.white)))
        ],
      )),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Column(children: [
                  Icon(Icons.remove_red_eye, size: 100, color: Colors.cyan),
                  Text("Theia"),
                  Text("Optical Solution")
                ])),
            Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: ElevatedButton(
                    style: style, child: Text("Send OTP"), onPressed: () {})),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'OTP',
                      labelStyle: TextStyle(color: Colors.white)),
                )),
            Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: ElevatedButton(
                    style: style,
                    child: Text("Log In"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
