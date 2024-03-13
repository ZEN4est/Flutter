import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nauka/nowa_strona.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const NowaStrona();
              },
            ),
          );
        },
        child: const Text('Nowe rzeczy'),
      ),
    );
  }
}
