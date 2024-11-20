import 'package:flutter/material.dart';
import 'LokasiPage.dart';
import 'ProfilePage.dart';
import 'InformasiPage.dart';

class HomePage extends StatefulWidget {
  final String username;

  HomePage({required this.username});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donor Darah'),
        backgroundColor: Colors.red[800],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.info), text: 'Informasi'),
            Tab(icon: Icon(Icons.location_on), text: 'Lokasi'),
            Tab(icon: Icon(Icons.person), text: 'Profil'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Tab Informasi
          InformasiPage(),

          // Tab Lokasi
          LokasiPage(),

          // Tab Profil
          ProfilePage(username: widget.username),
        ],
      ),
    );
  }
}


