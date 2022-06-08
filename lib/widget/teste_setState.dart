import 'package:flutter/material.dart';

class TestSetState extends StatefulWidget {
  @override
  _TestSetStateState createState() => _TestSetStateState();

}

class _TestSetStateState extends State<TestSetState> {
  bool _hasBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("teste"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: new Text('Change Color'),
              textColor: Colors.white,
              // 2
              color: _hasBeenPressed ? Colors.blue : Colors.black,
              // 3
              onPressed: () => {
                print(_hasBeenPressed),
                setState(() {
                  _hasBeenPressed = !_hasBeenPressed;
                })
              },
            )
          ],
        ),
      ),
    );
  }
}
