import 'package:flutter/material.dart';

class NowaStrona extends StatefulWidget {
  const NowaStrona({super.key});

  @override
  State<NowaStrona> createState() => _NowaStronaState();
}

class _NowaStronaState extends State<NowaStrona> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nowa strona'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('IconButton');
            },
            icon: const Icon(Icons.info_outline),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/flutter.png'),
            const SizedBox(height: 10),
            const Divider(
              color: Colors.purple,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.red,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Flutter',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: isSwitch ? Colors.purple : Colors.red),
              onPressed: () {
                debugPrint('ElevatedButton');
              },
              child: const Text('ElevatedButton'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('OutlinedButton');
              },
              child: const Text('OutlinedButton'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('TextButton');
              },
              child: const Text('TextButton'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('GestureDetector');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text('RowWidged'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
              value: isCheckbox,
              activeColor: Colors.black,
              onChanged: (bool? newBool) {
                setState(() {
                  isCheckbox = newBool;
                  visible = !visible;
                });
              },
            ),
            Visibility(
              visible: visible,
              child: Image.network(
                  'https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png'),
            ),
          ],
        ),
      ),
    );
  }
}
