import 'package:posyandu_cipayung/controllers/search_controller.dart';
import 'package:posyandu_cipayung/theme.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class search extends GetView<SearchController> {
  final controller = Get.put(SearchController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 121, 163, 122),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 51, 104, 53),
          title: Text('Sistem Informasi Posyandu'),
        ),
        body: StreamBuilder<QuerySnapshot<Object?>>(
          stream: controller.streamData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              var listAllDocs = snapshot.data!.docs;
              return ListView.builder(
                itemCount: listAllDocs.length,
                itemBuilder: (context, index) => ListTile(
                  title: Container(
                    height: 80,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 51, 104, 53),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        "${(listAllDocs[index].data() as Map<String, dynamic>)["Nama"]}",
                        style: whiteText.copyWith(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ));
  }
}
