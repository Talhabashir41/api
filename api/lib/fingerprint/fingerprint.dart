import 'package:api/fingerprint/auth.dart';
import 'package:flutter/material.dart';

class Fingerprint extends StatefulWidget {
  const Fingerprint({super.key});

  @override
  State<Fingerprint> createState() => _FingerprintState();
}

class _FingerprintState extends State<Fingerprint> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text('scan Fingerprint'),
            ElevatedButton.icon(
                onPressed: () async {
                  bool auth = await Authentication.authentication();
                  print('can $auth');
                },
                icon: Icon(Icons.fingerprint),
                label: Text('Scan Finger Print'))
          ],
        ),
     ),
);
  }
}