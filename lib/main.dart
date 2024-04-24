import 'package:flutter/material.dart';
import 'package:qr_code_scanner/generate_qr_code.dart';
import 'package:qr_code_scanner/scan_qr_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR code scanner',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'QR code scanner and generator',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ScanQRCode()));
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text('Scan QR code', style: TextStyle(fontSize: 20),),
            ),
          ),
          SizedBox(
            height: 48,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => GenerateQRCode()));
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text('Generate QR code', style: TextStyle(fontSize: 20),),
              )),
        ],
      )),
    );
  }
}
