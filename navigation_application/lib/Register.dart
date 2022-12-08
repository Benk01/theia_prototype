import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_application/Home.dart';

const List<String> list = <String>['Blind', 'Sighted', 'Caretaker'];

class Register extends StatefulWidget {
  const Register({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  IconData icondata = Icons.volume_up;
  String dropdownValue = list.first;
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
          Text("Register"),
          Padding(
              padding: EdgeInsets.only(left: 140),
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
                  horizontal: 30,
                ),
                child: DropdownButton<String>(
                  value: dropdownValue,
                  dropdownColor: Color.fromARGB(255, 60, 60, 60),
                  isExpanded: true,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 8,
                  style: const TextStyle(color: Colors.white),
                  focusColor: Colors.white,
                  underline: Container(
                    height: 2,
                    color: Color.fromARGB(255, 29, 29, 29),
                  ),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mobile Number',
                      labelStyle: TextStyle(color: Colors.white)),
                )),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '4-digit Pin Number',
                      labelStyle: TextStyle(color: Colors.white)),
                )),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm 4-digit Pin Number',
                      labelStyle: TextStyle(color: Colors.white)),
                )),
            Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: ElevatedButton(
                    style: style,
                    child: Text("Create new Account"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    })),
            //TextButton(child: Text("Log In"), onPressed: () => Login,)
          ],
        ),
      ),
    );
  }
}
