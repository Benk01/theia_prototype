import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_application/Caretaker.dart';
import 'package:navigation_application/Locations.dart';
import 'package:navigation_application/Navigate.dart';
import 'package:navigation_application/Welcome.dart';
import 'package:navigation_application/login.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  IconData icondata = Icons.volume_up;
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(minimumSize: const Size(350, 100));
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
            Text("Explore"),
            Padding(
                padding: EdgeInsets.only(left: 170),
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
                (Text('Search',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25))),
                Padding(
                    padding: EdgeInsets.only(top: 40, left: 10, right: 10),
                    child: ElevatedButton(
                        style: style,
                        child: Text("Gonzaga University"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Explore2()),
                          );
                        })),
                Padding(
                    padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                    child: ElevatedButton(
                        style: style,
                        child: Text("Boise State University"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Explore2()),
                          );
                        })),
                Padding(
                    padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                    child: ElevatedButton(
                        style: style,
                        child: Text("Seattle University"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Explore2()),
                          );
                        })),
                Padding(
                    padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                    child: ElevatedButton(
                        style: style,
                        child: Text("Eastern Washington University"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Explore2()),
                          );
                        })),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Search',
                          labelStyle: TextStyle(color: Colors.white)),
                    )),
              ])),
        ));
  }
}

class Explore2 extends StatefulWidget {
  const Explore2({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<Explore2> createState() => _ExploreState2();
}

class _ExploreState2 extends State<Explore2> {
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
            Text("Search Result"),
            Padding(
                padding: EdgeInsets.only(left: 170),
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
