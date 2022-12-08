import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_application/Caretaker.dart';
import 'package:navigation_application/Navigate.dart';
import 'package:navigation_application/Welcome.dart';
import 'package:navigation_application/login.dart';

class Locations extends StatefulWidget {
  const Locations({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<Locations> createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
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
          Text("My Locations"),
          Padding(
              padding: EdgeInsets.only(left: 90),
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
                    child: Text("Washington State University"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Locations2()),
                      );
                    })),
            Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: ElevatedButton(
                    style: style,
                    child: Text("University of Idaho"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Locations2()),
                      );
                    })),
            Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: ElevatedButton(
                    style: style,
                    child: Text("University of Washington"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Locations2()),
                      );
                    })),
            Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: ElevatedButton(
                    style: style,
                    child: Text("Browse to add more..."),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Locations2()),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}

class Locations2 extends StatefulWidget {
  const Locations2({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<Locations2> createState() => _LocationsState2();
}

class _LocationsState2 extends State<Locations2> {
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
            Text("My Locations"),
            Padding(
                padding: EdgeInsets.only(left: 90),
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
                (Text('Washington State University',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25))),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  child:
                      Image(image: AssetImage('assets/cub.jpg'), height: 230),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        top: 5, bottom: 10, left: 10, right: 10),
                    child: ElevatedButton(
                        style: style,
                        child: Text("The CUB"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Navigate()),
                          );
                        })),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Image(
                      image: AssetImage('assets/library.jpg'), height: 230),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                    child: ElevatedButton(
                        style: style,
                        child: Text("Holland-Terrell Library"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Navigate()),
                          );
                        })),
                Padding(
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 80, right: 80),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey),
                        child: Text("More"),
                        onPressed: () {
                          null;
                        })),
              ])),
        ));
  }
}
