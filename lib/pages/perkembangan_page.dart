import 'package:flutter/material.dart';
import 'package:posyandu_cipayung/theme.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:intl/intl.dart';

class perkembangan extends StatefulWidget {
  const perkembangan({Key? key}) : super(key: key);

  @override
  State<perkembangan> createState() => _perkembanganState();
}

class _perkembanganState extends State<perkembangan> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: '6TAUfK99rAY',
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
          'Perkembangan',
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
                                'Perkembangan',
                                style: whiteText.copyWith(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 20),
                              Text(
                                  "Perkembangan adalah proses bertambahnya kematangan dan fungsi psikologis manusia. Kematangan perkembangan yang dialami oleh manusia akan meningkatkan kemampuannya pada lingkup perkembangan tersebut. Penting untuk mengetahui perkembangan anak usia dini, karena perkembangan anak saat ini akan mempengaruhi perkembangan selama rentang kehidupannya. Pengatahuan tentang perkembangan anak usia dini dapat membantu orang tua dan guru untuk menyiapkan upaya mengoptimalkan perkembangan tersebut.",
                                  style: whiteText.copyWith(
                                    fontSize: 20,
                                  )),
                              SizedBox(height: 15),
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
