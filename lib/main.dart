import 'package:flutter/material.dart';

void main() {
  runApp(Coba());
}

class Coba extends StatefulWidget {
  @override
  _CobaState createState() => _CobaState();
}

class _CobaState extends State<Coba> {
  final ScrollController _scrollController = ScrollController();

  bool showTitle = false;
  bool showHistory = false;
  bool showContact = false;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      setState(() {
        if (_scrollController.offset > 100) {
          showTitle = true;
        }

        if (_scrollController.offset > 250) {
          showHistory = true;
        }

        if (_scrollController.offset > 600) {
          showContact = true;
        }
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Widget animasi({
    required bool tampil,
    required Widget child,
  }) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 700),
      opacity: tampil ? 1.0 : 0.0,
      child: AnimatedSlide(
        duration: Duration(milliseconds: 700),
        offset: tampil ? Offset(0, 0) : Offset(0, 0.2),
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // BACKGROUND SAGE
        backgroundColor: Color(0xFFE8F3E8),

        appBar: AppBar(
          title: Text('Sumber Umbulan Langlang'),
          backgroundColor: Color(0xFFD4E8D4),
        ),

        body: SingleChildScrollView(
          controller: _scrollController,
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
              animasi(
                tampil: showTitle,
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Sejarah Singkat Sumber Umbulan Langlang',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF355E3B),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              // SEJARAH
              animasi(
                tampil: showHistory,
                child: Container(
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
                      color: Color(0xFF333333),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),

              // BAGIAN LOKASI DAN KONTAK
              animasi(
                tampil: showContact,
                child: Container(
                  margin: EdgeInsets.all(16),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xFFB7CDB7),
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
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
                                color: Color(0xFF355E3B),
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 22,
                                  color: Color(0xFF355E3B),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'Sumber Umbulan\n'
                                    'Langlang, Kecamatan Singosari,\n'
                                    'Kabupaten Malang,\n'
                                    'Jawa Timur',
                                    style: TextStyle(
                                      fontSize: 14,
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // GARIS PEMISAH
                      Container(
                        height: 130,
                        width: 1,
                        color: Color(0xFFB7CDB7),
                        margin: EdgeInsets.symmetric(horizontal: 16),
                      ),

                      // CONTACT
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Contact Saya',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF355E3B),
                              ),
                            ),

                            SizedBox(height: 12),

                            // TELEPON
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 20,
                                  color: Color(0xFF355E3B),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    '085856212688',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 12),

                            // GARIS
                            Container(
                              height: 1,
                              color: Color(0xFFB7CDB7),
                            ),

                            SizedBox(height: 12),

                            // EMAIL
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.email,
                                  size: 20,
                                  color: Color(0xFF355E3B),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'insaninkamiliaannisaa@gmail.com',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
