import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Business Card',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const BusinessCardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 8,
            margin: const EdgeInsets.all(12),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Your Name',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Flutter Developer',
                    style: TextStyle(letterSpacing: 2, color: Colors.grey),
                  ),
                  const Divider(
                    height: 30,
                    thickness: 1,
                    color: Colors.teal,
                    indent: 40,
                    endIndent: 40,
                  ),

                  ListTile(
                    leading: const Icon(Icons.phone, color: Colors.teal),
                    title: const Text('+90 555 123 4567'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.email, color: Colors.teal),
                    title: const Text('you@example.com'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.location_on, color: Colors.teal),
                    title: const Text('Istanbul, Turkey'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.web, color: Colors.teal),
                    title: const Text('www.yourwebsite.com'),
                  ),

                  const SizedBox(height: 16),

                  // SOCIAL MEDIA ICONS
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.linked_camera),
                        onPressed: () {
                          // Replace with LinkedIn profile
                        },
                        tooltip: 'LinkedIn',
                      ),
                      IconButton(
                        icon: const Icon(Icons.code),
                        onPressed: () {
                          // Replace with GitHub profile
                        },
                        tooltip: 'GitHub',
                      ),
                      IconButton(
                        icon: const Icon(Icons.camera_alt),
                        onPressed: () {
                          // Replace with Instagram profile
                        },
                        tooltip: 'Instagram',
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // QR CODE
                  QrImageView(
                    data: 'https://www.yourwebsite.com',
                    version: QrVersions.auto,
                    size: 120.0,
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Scan to visit my website',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
