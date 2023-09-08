import 'package:flutter/material.dart';
import 'package:posyandu_cipayung/theme.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:intl/intl.dart';

class imunisasi extends StatefulWidget {
  imunisasi({Key? key}) : super(key: key);

  @override
  State<imunisasi> createState() => _imunisasiState();
}

class _imunisasiState extends State<imunisasi> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'fKOl0MCtgLg',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
      showLiveFullscreenButton: false,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color.fromARGB(255, 121, 163, 122),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 51, 104, 53),
        centerTitle: true,
        title: Text(
          'IMUNISASI',
          style: whiteText.copyWith(fontSize: 30),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.red,
            ),
            SizedBox(
              height: 10,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 250,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Color.fromARGB(255, 51, 104, 53),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Imunisasi',
                                style: whiteText.copyWith(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 20),
                              Text(
                                  "Setiap minggu ke 4 bulan April diperingati sebagai Pekan Imunisasi Dunia (PID). Ada 5 imunisasi dasar lengkap yang wajib dan gratis bagi anak. ",
                                  style: whiteText.copyWith(
                                    fontSize: 20,
                                  )),
                              SizedBox(height: 15),
                              Text(
                                  "PID diprakarsai World Health Organization (WHO) sejak tahun 2012 dan hingga saat ini telah dilaksanakan di lebih dari 180 negara termasuk Indonesia.",
                                  style: whiteText.copyWith(
                                    fontSize: 20,
                                  )),
                              SizedBox(height: 15),
                              Text(
                                  "Dikutip dari laman Kemenkes, 5 imunisasi dasar lengkap ini perlu diberikan pada bayi sebelum berusia 1 tahun, yakni:",
                                  style: whiteText.copyWith(
                                    fontSize: 20,
                                  )),
                              SizedBox(height: 15),
                              Text(
                                  "1. 1 bulan BCG Polio 1, untuk mencegah penularan Tuberculosis dan Polio",
                                  style: whiteText.copyWith(
                                    fontSize: 20,
                                  )),
                              SizedBox(height: 5),
                              Text(
                                  "2. 2 bulan DPT-HB-Hib 1 Polio 2, untuk mencegah Polio, Difteri, Batuk Rejan, Tetanus, Hepatitis B, Meningitis, & Pneumonia",
                                  style: whiteText.copyWith(
                                    fontSize: 20,
                                  )),
                              SizedBox(height: 5),
                              Text("3. 3 bulan DPT-HB-Hib 2 Polio 3",
                                  style: whiteText.copyWith(
                                    fontSize: 20,
                                  )),
                              SizedBox(height: 5),
                              Text("4. 4 bulan DPT-HB-Hib 3 Polio 4",
                                  style: whiteText.copyWith(
                                    fontSize: 20,
                                  )),
                              SizedBox(height: 5),
                              Text("5. 9 bulan Campak, untuk mencegah Campak",
                                  style: whiteText.copyWith(
                                    fontSize: 20,
                                  )),
                              SizedBox(height: 20),
                              Text("Selengkapnya di video.",
                                  style: whiteText.copyWith(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          )),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
