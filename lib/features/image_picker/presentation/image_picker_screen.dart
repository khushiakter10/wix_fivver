import 'package:flutter/material.dart';

class ImagePickerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Picker Screen")),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Pick an image from your gallery!',
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(height: 20),
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blueAccent,
              child: Icon(Icons.photo, size: 60, color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              'Click below to choose an image',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Your image picker code goes here
              },
              child: Text('Pick Image'),
            ),
            SizedBox(height: 20),
            // Add more widgets as needed
            Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text('Details or other content here'),
                  SizedBox(height: 10),
                  Text('More content that might overflow'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
