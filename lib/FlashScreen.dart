import 'package:flutter/material.dart';

class LokasiPage extends StatelessWidget {
  final List<Map<String, String>> lokasiDonor = [
    {
      'nama': 'PMI Jakarta Pusat',
      'alamat': 'Jl. Kramat Raya No. 47, Jakarta Pusat',
      'telepon': '021-12345678'
    },
    {
      'nama': 'PMI Bandung',
      'alamat': 'Jl. Aceh No. 79, Bandung',
      'telepon': '022-87654321'
    },
    {
      'nama': 'PMI Surabaya',
      'alamat': 'Jl. Embong Ploso No. 7-15, Surabaya',
      'telepon': '031-12398765'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lokasi Donor Darah'),
        backgroundColor: Colors.red[800],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: lokasiDonor.length,
        itemBuilder: (context, index) {
          final lokasi = lokasiDonor[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: Icon(Icons.location_on, color: Colors.red[800]),
              title: Text(
                lokasi['nama']!,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('${lokasi['alamat']!}\nTelp: ${lokasi['telepon']}'),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}

