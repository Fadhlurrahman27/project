import 'account.dart';
import 'balita_page.dart';
import 'imunisasi_page.dart';
import 'penimbangan_page.dart';
import 'perkembangan_page.dart';
import 'search.dart';
import 'vitamin_page.dart';
import 'package:posyandu_cipayung/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final User = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 121, 163, 122),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 51, 104, 53),
        title: Text('Sistem Informasi Posyandu Seruni'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Selamat Bekerja, ',
                          style: whiteText.copyWith(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('Kader',
                          style: whiteText.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 18))
                    ],
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(height: 20),
              //Balita
              Container(
                height: 100,
                width: 374,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 51, 104, 53),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => balita()));
                  },
                  child: Row(
                    children: [
                      SizedBox(width: 25),
                      Text('Balita',
                          style: whiteText.copyWith(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Spacer(),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/balita.png'))),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              //penimbangan
              Container(
                height: 100,
                width: 374,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 51, 104, 53),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => penimbangan()));
                  },
                  child: Row(
                    children: [
                      SizedBox(width: 25),
                      Text('Penimbangan',
                          style: whiteText.copyWith(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Spacer(),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/penimbangan.png'))),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              //imunisasi
              Container(
                height: 100,
                width: 374,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 51, 104, 53),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => imunisasi()));
                  },
                  child: Row(
                    children: [
                      SizedBox(width: 25),
                      Text('Imunisasi',
                          style: whiteText.copyWith(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Spacer(),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/imunisasi.png'))),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              //vitamin
              Container(
                height: 100,
                width: 374,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 51, 104, 53),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => vitamin()));
                  },
                  child: Row(
                    children: [
                      SizedBox(width: 25),
                      Text('Vitamin A',
                          style: whiteText.copyWith(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Spacer(),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/vitamin.png'))),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              //perkembangan
              Container(
                height: 100,
                width: 374,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 51, 104, 53),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => perkembangan()));
                  },
                  child: Row(
                    children: [
                      SizedBox(width: 25),
                      Text('Perkembangan',
                          style: whiteText.copyWith(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Spacer(),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/perkembangan.png'))),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        )),
      ),
    );
  }
}
