import 'package:flutter/material.dart';
import 'app_localizations.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).translate('title')),
      ),
      body: Center(
        child: Text(
          AppLocalizations.of(context).translate('greeting', args: {'name': 'John','age': 25,'gender': '男'}),
        ),
      ),
    );
  }
}