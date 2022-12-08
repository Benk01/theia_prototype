import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_application/login.dart';

class Caretaker extends StatefulWidget {
  const Caretaker({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<Caretaker> createState() => _CaretakerState();
}

class _CaretakerState extends State<Caretaker> {
  IconData icondata = Icons.volume_up;
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(minimumSize: const Size(350, 40));
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
            Text("Caretaker Override"),
            Padding(
                padding: EdgeInsets.only(left: 14),
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
                child: Text("Return to Original View"),
                onPressed: () {
                  Navigator.pop(context);
                })),
        body: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(top: 20),
          child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0)),
              ),
              constraints: BoxConstraints.expand(
                height: Theme.of(context).textTheme.headline4!.fontSize! * 1.1 +
                    660.0,
                width: Theme.of(context).textTheme.headline4!.fontSize! * 1.1 +
                    335,
              ),
              child: Column(children: <Widget>[
                (Text('User\'s Summary',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25))),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        top: 243, bottom: 10, left: 10, right: 10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            minimumSize: const Size(350, 80)),
                        child: Text("Medical Emergency"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Emergency()),
                          );
                        })),
              ])),
        ));
  }
}

class Emergency extends StatefulWidget {
  const Emergency({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<Emergency> createState() => _EmergencyState();
}

class _EmergencyState extends State<Emergency> {
  IconData icondata = Icons.volume_up;
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(minimumSize: const Size(350, 40));
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
            Text("Caretaker Override"),
            Padding(
                padding: EdgeInsets.only(left: 14),
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
                child: Text("Return to Original View"),
                onPressed: () {
                  Navigator.pop(context);
                })),
        body: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(top: 20),
          child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0)),
              ),
              constraints: BoxConstraints.expand(
                height: Theme.of(context).textTheme.headline4!.fontSize! * 1.1 +
                    660.0,
                width: Theme.of(context).textTheme.headline4!.fontSize! * 1.1 +
                    335,
              ),
              child: Column(children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: Text('911',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 200))),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Icon(Icons.phone, size: 200, color: Colors.white)),
              ])),
        ));
  }
}
