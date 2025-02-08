import 'package:flutter/material.dart';

void main() {
  runApp(const TeamManagement());
}

class TeamManagement extends StatelessWidget {
  const TeamManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Team Management')),
        body: const Center(
          child: Text('Welcome to Team Management!'),
        ),
      ),
    );
  }
}
