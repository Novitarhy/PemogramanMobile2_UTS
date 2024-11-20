import 'package:flutter/material.dart';

class InformasiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        _buildListItem(
          context,
          title: 'Apa itu Donor Darah?',
          description: 'Donor darah adalah kegiatan sukarela untuk memberikan darah demi membantu orang lain yang membutuhkan transfusi darah.',
          onTap: () {
            _showDetails(context, 'Apa itu Donor Darah?', 'Donor darah adalah kegiatan sukarela untuk memberikan darah demi membantu orang lain yang membutuhkan transfusi darah.');
          },
        ),
        _buildListItem(
          context,
          title: 'Manfaat Donor Darah',
          description: 'Menyimpan nyawa orang lain, menurunkan risiko penyakit jantung, dan meningkatkan produksi sel darah baru.',
          onTap: () {
            _showDetails(context, 'Manfaat Donor Darah', 
              '1. Menyimpan nyawa orang lain.\n'
              '2. Menurunkan risiko penyakit jantung.\n'
              '3. Membantu tubuh menghasilkan sel darah baru.\n'
              '4. Meningkatkan rasa empati dan kepedulian terhadap sesama.'
            );
          },
        ),
        _buildListItem(
          context,
          title: 'Fakta Menarik tentang Donor Darah',
          description: 'Setiap kali donor darah, Anda bisa menyelamatkan nyawa orang lain.',
          onTap: () {
            _showDetails(context, 'Fakta Menarik tentang Donor Darah', 
              '• Setiap kali donor darah, Anda bisa menyelamatkan hingga 3 nyawa.\n'
              '• Darah hanya bisa disimpan selama 42 hari, sehingga donor darah diperlukan setiap saat.\n'
              '• Sebagian besar pendonor adalah orang sehat yang berusia antara 18 hingga 60 tahun.'
            );
          },
        ),
        _buildListItem(
          context,
          title: 'Prosedur Donor Darah',
          description: 'Prosedur melibatkan pemeriksaan kesehatan, pengambilan darah, dan pemulihan setelahnya.',
          onTap: () {
            _showDetails(context, 'Prosedur Donor Darah', 
              '1. Pemeriksaan Kesehatan: Sebelum mendonorkan darah, petugas akan memeriksa kesehatan Anda.\n'
              '2. Pengambilan Darah: Proses pengambilan darah berlangsung sekitar 10 menit.\n'
              '3. Pemulihan: Setelah donor, Anda akan diberi waktu untuk beristirahat dan menikmati makanan ringan.'
            );
          },
        ),
      ],
    );
  }

  Widget _buildListItem(BuildContext context, {required String title, required String description, required VoidCallback onTap}) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        subtitle: Text(description, style: TextStyle(fontSize: 16)),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.red[800]),
        onTap: onTap,
      ),
    );
  }

  void _showDetails(BuildContext context, String title, String details) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title, style: TextStyle(color: Colors.red[800])),
          content: SingleChildScrollView(
            child: Text(details, style: TextStyle(fontSize: 16)),
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
