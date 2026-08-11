import 'package:flutter/material.dart';

void main() {
  runApp(Coba());
}

class Coba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sumber Umbulan Langlang'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // FOTO
              Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/sumber umbulan.webp',
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),

              // JUDUL
              Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Sejarah Singkat Sumber Umbulan Langlang',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // SEJARAH
              Container(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 20),
                child: Text(
                  'Sumber Umbulan merupakan mata air alami yang berada di '
                  'kawasan Langlang, Kecamatan Singosari, Kabupaten Malang, '
                  'Jawa Timur. Tempat ini dikenal karena airnya yang jernih, '
                  'sejuk, dan lingkungan alamnya yang masih asri.\n\n'
                  'Sejak dahulu, sumber air ini dimanfaatkan oleh masyarakat '
                  'sekitar sebagai bagian dari kehidupan sehari-hari. Selain '
                  'sebagai sumber air, Umbulan juga memiliki nilai budaya '
                  'dan spiritual bagi masyarakat setempat.\n\n'
                  'Sumber Umbulan kemudian dikembangkan sebagai tempat wisata '
                  'oleh masyarakat sekitar. Fasilitas di area sumber dibangun '
                  'secara bertahap sehingga masyarakat maupun wisatawan dapat '
                  'menikmati keindahan alamnya.\n\n'
                  'Kini, Sumber Umbulan menjadi salah satu tempat wisata alam '
                  'di kawasan Singosari. Kejernihan air, pepohonan yang '
                  'rindang, serta suasana yang sejuk menjadikannya tempat '
                  'yang menarik untuk dikunjungi.',
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),

              // BAGIAN BAWAH
              Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // LOKASI
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lokasi',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Sumber Umbulan\n'
                            'Langlang, Kecamatan Singosari,\n'
                            'Kabupaten Malang,\n'
                            'Jawa Timur',
                            style: TextStyle(
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // KONTAK
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Contact Saya',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'No. HP:\n'
                            '085856212688\n\n'
                            'Email:\n'
                            'insaninkamiliaannisaa@gmail.com',
                            style: TextStyle(
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
