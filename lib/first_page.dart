import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is First Page',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushNamed(
                    '/second',
                    arguments: 'How do you feel today?'
                  );
                },
                child: const Text('Go To second page'),
            ),
          ],
        ),
      ),
    );
  }
}
