import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_application/Caretaker.dart';
import 'package:navigation_application/Explore.dart';
import 'package:navigation_application/Favorites.dart';
import 'package:navigation_application/Locations.dart';
import 'package:navigation_application/Welcome.dart';
import 'package:navigation_application/login.dart';
import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'dart:async';
import 'package:shake/shake.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    ShakeDetector detector = ShakeDetector.autoStart(
      onPhoneShake: () {
        ScaffoldMessenger.of(context).showMaterialBanner(
          MaterialBanner(
            content: const Text("WARNING: FALL DETECTED!"),
            contentTextStyle: const TextStyle(),
            backgroundColor: Colors.black,
            leading: Icon(Icons.warning),
            actions: [
              ElevatedButton(
                  child: Text("Call EMS"),
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Emergency()),
                    );
                  }),
              ElevatedButton(
                child: Text("I'm okay."),
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                },
              )
            ],
          ),
        );
      },
      shakeThresholdGravity: 2.7,
      shakeSlopTimeMS: 500,
      shakeCountResetTime: 3000,
    );
  }

  IconData icondata = Icons.volume_up;
  @override
  Widget build(BuildContext context) {
    //   onPhoneShake: () {
    // );
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
          Text("Home"),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
          padding: EdgeInsets.only(
            top: 100,
          ),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  minimumSize: const Size(350, 30)),
              child: Text("Press here if you are a Caretaker/Helper"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Caretaker()),
                );
              })),
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
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: ElevatedButton(
                    style: style,
                    child: Text("My Favorites"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Favorites()),
                      );
                    })),
            Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: ElevatedButton(
                    style: style,
                    child: Text("My Locations"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Locations()),
                      );
                    })),
            Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: ElevatedButton(
                    style: style,
                    child: Text("Explore"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Explore()),
                      );
                    })),
            Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: ElevatedButton(
                    style: style,
                    child: Text("Logout"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Welcome()),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
