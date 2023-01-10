import 'package:flutter/material.dart';
void main() {
  runApp(MyHomePage());
}
class MyHomePage extends StatefulWidget {
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool first = false;
  @override
  void initState() {
    super.initState();
    first = false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My App")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              AnimatedCrossFade(
                crossFadeState: 
                first ? CrossFadeState.showSecond : CrossFadeState.showFirst,
                duration: Duration(seconds: 1),
                firstChild: FlutterLogo(
                  style: FlutterLogoStyle.stacked,
                  size: 100.0,
                ),
                secondChild: FlutterLogo(
                  style: FlutterLogoStyle.horizontal,
                  size: 200.0,
                ),
              ),
                            Padding(
                padding: const EdgeInsets.all(50.0),
                child: OutlinedButton(
                  child: Text("Animate"),
                  onPressed: () {
                    setState(() {
                      first = !first;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
