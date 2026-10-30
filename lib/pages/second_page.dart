import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final int count = ModalRoute.of(context)?.settings.arguments as int? ?? 0;

    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter from the home page: $count'),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Remove the screen from the top of the navigator stack
                Navigator.pop(context);
              },
              child: const Text('Go back home'),
            ),
          ],
        ),
      ),
    );
  }
}
