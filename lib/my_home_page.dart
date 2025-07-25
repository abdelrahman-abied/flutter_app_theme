import 'package:flutter/material.dart';
import 'package:flutter_app_theme/theme/theme_extansions.dart';
import 'package:flutter_app_theme/theme_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.colorScheme.inversePrimary,
        title: Text(
          widget.title,
          style: TextStyle(
            color: context.colorTheme.textColor,
          ),
        ),
        leading: Consumer(builder: (context, ref, child) {
          return IconButton(
            icon: Icon(
              Icons.contrast,
              color: Theme.of(context).colorTheme.iconColor,
            ),
            onPressed: () {
              ref.read(themeProvider.notifier).toggleTheme();
            },
          );
        }),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  hintStyle: TextStyle(
                    color: context.colorTheme.textColor,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: context.colorTheme.secondaryColor,
                      width: 2,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Image.asset(
              Theme.of(context).appImageTheme.logo,
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 100,
              width: 100,
              child: Container(
                decoration: BoxDecoration(
                  gradient: Theme.of(context).appGradientTheme.backgroundGradient,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                color: context.colorTheme.textColor,
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).appTextTheme.headline1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
