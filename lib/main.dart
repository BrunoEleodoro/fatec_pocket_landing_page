import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  // var markdown = "# Flutter Markdown\n\n" +
  //     // "[![pub package](https://img.shields.io/pub/v/flutter_markdown.svg)](https://pub.dartlang.org/packages/flutter_markdown) " +
  //     // "[![Build Status](https://travis-ci.org/flutter/flutter_markdown.svg?branch=master)](https://travis-ci.org/flutter/flutter_markdown)" +
  //     "A markdown renderer for Flutter. It supports the" +
  //     "[original format](https://daringfireball.net/projects/markdown/), but no inline" +
  //     "html." +
  //     "## Getting Started" +
  //     "Using the Markdown widget is simple, just pass in the source markdown as a" +
  //     "string:" +
  //     "    Markdown(data: markdownSource);" +
  //     "If you do not want the padding or scrolling behavior, use the MarkdownBody" +
  //     "instead:" +
  //     "    MarkdownBody(data: markdownSource);" +
  //     "By default, Markdown uses the formatting from the current material design theme," +
  //     "but it's possible to create your own custom styling. Use the MarkdownStyle class" +
  //     "to pass in your own style. If you don't want to use Markdown outside of material" +
  //     "design, use the MarkdownRaw class." +
  //     "## Image support" +
  //     "The `Img` tag only supports the following image locations:" +
  //     "* From the network: Use a URL prefixed by either `http://` or `https://`." +
  //     "* From local files on the device: Use an absolute path to the file, for example by" +
  //     "concatenating the file name with the path returned by a known storage location," +
  //     "such as those provided by the [`path_provider`](https://pub.dartlang.org/packages/path_provider)" +
  //     "plugin." +
  //     "* From image locations referring to bundled assets: Use an asset name prefixed by `resource:`." +
  //     "like `resource:assets/image.png`.";
  var markdown = "";
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
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
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
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
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // SelectableText(
              //   'You have pushed the button this many times:',
              // ),
              // Text(
              //   '$_counter',
              //   style: Theme.of(context).textTheme.display1,
              // ),
              Flexible(
                flex: 6,
                child: Container(
                  // color: Colors.yellow,
                  child: TextFormField(
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    onChanged: (text) {
                      setState(() {
                        markdown = text;
                      });
                    },
                  ),
                ),
              ),
              Flexible(
                flex: 6,
                child: Container(
                  // color: Colors.red,
                  child: Markdown(
                    data: markdown,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
