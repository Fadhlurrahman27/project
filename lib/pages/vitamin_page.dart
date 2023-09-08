import 'package:flutter/material.dart';
import 'package:posyandu_cipayung/theme.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:intl/intl.dart';

class vitamin extends StatefulWidget {
  vitamin({Key? key}) : super(key: key);

  @override
  State<vitamin> createState() => _vitaminState();
}

class _vitaminState extends State<vitamin> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: '1drUOGQRwQ8',
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
          'VITAMIN A',
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
                                'Vitamin A',
                                style: whiteText.copyWith(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 20),
                              Text(
                                  "Bulan Februari dan Agustus merupakan bulan Vitamin A. Vitamin A sendiri sangat dibutuhkan bagi tubuh karena vitamin A terlibat dalam pembentukan, produksi, dan pertumbuhan sel darah merah, sel limfosit, antibodi juga integritas sel epitel pelapis tubuh.",
                                  style: whiteText.copyWith(
                                    fontSize: 20,
                                  )),
                              SizedBox(height: 15),
                              Text(
                                  "Adanya bulan Vitamin A sendiri membantu pemerataan terpenuhinya Vitamin A, pada bulan Vitamin A ini dilakukan pembagian suplementasi vitamin A dosis tinggi Kapsul biru (dosis 100.000 IU) untuk bayi umur 6-11 bulan dan kapsul merah (dosis 200.000 IU) untuk anak umur 12-59 bulan. Vitamin A kapsul merah juga diberikan kepada ibu yang dalam masa nifas. Dengan adanya bulan Vitamin A diharapkan dapat membantu untuk pemerataan pembagian Vitamin A serta meningkatkan kewaspaadan akan kekurangan vitamin A, agar kebutuhan Vitamin A dapat terpenuhi secara merata.",
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
