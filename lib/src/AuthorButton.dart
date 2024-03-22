import 'package:dicegame/src/Author.dart';
import 'package:flutter/material.dart';
import 'Rules.dart';

class AuthorButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Author()),
            );
          },
        child: Text('Author'),
      ),
    );
  }
}