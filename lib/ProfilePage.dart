import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String username;

  ProfilePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.red[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.red[800],
              child: Text(
                username[0].toUpperCase(),
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Text(
              username,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red[900]),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.red[800]),
              title: Text('Pengaturan Akun'),
              onTap: () {
                // Aksi untuk navigasi ke pengaturan
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.red[800]),
              title: Text('Logout'),
              onTap: () {
                // Aksi logout
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
