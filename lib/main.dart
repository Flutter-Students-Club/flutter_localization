import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'date_time_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      supportedLocales: [
        Locale('en', ''),
        Locale('tr', ''),
        Locale('ar', ''),
      ],
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      title: 'Material App',
      home: AppBody(),
    );
  }
}

class AppBody extends StatelessWidget {
  const AppBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime datetime = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Localization'),
        leading: Center(
            child: Text(
          AppLocalizations.of(context)!.left,
          style: TextStyle(fontSize: 30),
        )),
        actions: [
          Center(
            child: Text(
              AppLocalizations.of(context)!.right,
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.helloWorld,
              style: const TextStyle(fontSize: 34),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                decoration: InputDecoration(labelText: AppLocalizations.of(context)!.textField),
              ),
            ),
            DateTimePicker(),
          ],
        ),
      ),
    );
  }
}
