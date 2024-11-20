import 'package:flutter/material.dart';

class LokasiPage extends StatelessWidget {
  // Daftar lokasi donor darah (misalnya dengan nama dan ikon)
  final List<Map<String, String>> locations = [
    {'name': 'RS Siloam Purwakarta', 'icon': 'hospital'},
    {'name': 'Puskesmas Kecamatan Bungursari', 'icon': 'location_on'},
    {'name': 'Donor Darah Peduli ', 'icon': 'local_hospital'},
    {'name': 'Gedung Kembar Purwakarta', 'icon': 'home'},
    {'name': 'RS Rodjak', 'icon': 'hospital'},
    {'name': 'RS Ramahadi', 'icon': 'hospital'},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Menampilkan 2 kolom
        crossAxisSpacing: 16.0, // Jarak antar kolom
        mainAxisSpacing: 16.0, // Jarak antar baris
      ),
      itemCount: locations.length,
      itemBuilder: (context, index) {
        return _buildLocationCard(locations[index], context);
      },
    );
  }

  // Fungsi untuk membuat card untuk setiap lokasi
  Widget _buildLocationCard(Map<String, String> location, BuildContext context) {
    IconData locationIcon;

    // Memilih ikon berdasarkan nama (icon) yang ada dalam daftar
    switch (location['icon']) {
      case 'hospital':
        locationIcon = Icons.local_hospital;
        break;
      case 'location_on':
        locationIcon = Icons.location_on;
        break;
      case 'local_hospital':
        locationIcon = Icons.local_hospital;
        break;
      case 'home':
        locationIcon = Icons.home;
        break;
      case 'place':
        locationIcon = Icons.place;
        break;
      default:
        locationIcon = Icons.location_on;
    }

    // Cek apakah 'name' ada atau tidak dalam map dan tampilkan log jika null
    if (location['name'] == null) {
      print('Location name is missing for $location');
      return Center(child: Text('Nama lokasi tidak ditemukan.'));
    }

    return GestureDetector(
      onTap: () {
        // Tindakan ketika item diklik, misalnya menampilkan detail lebih lanjut
        _showLocationDetails(context, location['name']!);
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(locationIcon, size: 40, color: Colors.red[800]),
              SizedBox(height: 8),
              Text(
                location['name'] ?? 'Lokasi Tidak Tersedia', // Tampilkan teks default jika null
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk menampilkan detail lokasi
  void _showLocationDetails(BuildContext context, String locationName) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Lokasi: $locationName', style: TextStyle(color: Colors.red[800])),
          content: Text(
            'Detail lokasi donor darah di $locationName.\n'
            'Lokasi Purwakarta Istiewa'
            'Tempat ini menyediakan layanan donor darah pada jam kerja tertentu.',
            style: TextStyle(fontSize: 16),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Tutup', style: TextStyle(color: Colors.red[800])),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
