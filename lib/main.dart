import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

void main() {
  runApp(const MyApp());
  doWhenWindowReady(() {
    final win = appWindow;
    const initialSize = Size(1280, 720);
    win.minSize = initialSize;
    win.size = initialSize;
    win.alignment = Alignment.center;
    win.title = "Custom window with Flutter";
    win.show();
  });
}

const borderColor = Color(0xFF805306);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(children: const [ToolBar()]),
        ),
      ),
    );
  }
}

class ToolBar extends StatelessWidget {
  const ToolBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      width: double.infinity,
      color: Color(0xFF260026),
      child: Column(
        children: [
          WindowTitleBarBox(
            child: Row(
              children: [
                const AppOption(),
                Expanded(child: MoveWindow()),
                const WindowsButtons()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AppOption extends StatelessWidget {
  const AppOption({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MoveWindow(
        child: Row(
      children: [
        Padding(
            padding: EdgeInsets.only(left: 5, bottom: 0, right: 5, top: 0),
            child: Text(
              "Fails",
              style: TextStyle(
                color: Color(0xffffffff),
              ),
            )),
        Padding(
            padding: EdgeInsets.only(left: 0, bottom: 0, right: 5, top: 0),
            child: Text(
              "Edits",
              style: TextStyle(color: Color(0xffffffff)),
            )),
        Padding(
            padding: EdgeInsets.only(left: 0, bottom: 0, right: 5, top: 0),
            child: Text(
              "Select",
              style: TextStyle(color: Color(0xffffffff)),
            )),
        Padding(
            padding: EdgeInsets.only(left: 0, bottom: 0, right: 5, top: 0),
            child: Text(
              "Show",
              style: TextStyle(color: Color(0xffffffff)),
            )),
        Padding(
            padding: EdgeInsets.only(left: 0, bottom: 0, right: 5, top: 0),
            child: Text(
              "Go to",
              style: TextStyle(color: Color(0xffffffff)),
            )),
        Padding(
            padding: EdgeInsets.only(left: 0, bottom: 0, right: 5, top: 0),
            child: Text(
              "Run",
              style: TextStyle(color: Color(0xffffffff)),
            )),
        Padding(
            padding: EdgeInsets.only(left: 0, bottom: 0, right: 5, top: 0),
            child: Text(
              "Terminal",
              style: TextStyle(color: Color(0xffffffff)),
            )),
        Padding(
            padding: EdgeInsets.only(left: 0, bottom: 0, right: 5, top: 0),
            child: Text(
              "Help",
              style: TextStyle(color: Color(0xffffffff)),
            )),
      ],
    ));
  }
}

class WindowsButtons extends StatelessWidget {
  const WindowsButtons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(),
        MaximizeWindowButton(),
        CloseWindowButton(),
      ],
    );
  }
}
