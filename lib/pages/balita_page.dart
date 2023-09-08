import 'package:posyandu_cipayung/controllers/add_balita.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class balita extends GetView<AddBalitaController> {
  final controller = Get.put(AddBalitaController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 51, 104, 53),
        title: Text('Input Data'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            TextField(
              controller: controller.nibC,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "NIB"),
            ),
            SizedBox(height: 10),
            TextField(
              controller: controller.namaC,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "Nama"),
            ),
            TextField(
              controller: controller.tglC,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "Tanggal Lahir"),
            ),
            TextField(
              controller: controller.jkC,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "Jenis Kelamin"),
            ),
            TextField(
              controller: controller.ibuC,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "Nama Ibu"),
            ),
            TextField(
              controller: controller.ayahC,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "Nama Ayah"),
            ),
            TextField(
              controller: controller.alamatC,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "Alamat"),
            ),
            TextField(
              controller: controller.pbC,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "Panjang Badan"),
            ),
            TextField(
              controller: controller.beratC,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "Berat Lahir"),
            ),
            TextField(
              controller: controller.lingkarC,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "Lingkar Kepala"),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => controller.addBalita(
                  controller.nibC.text,
                  controller.namaC.text,
                  controller.tglC.text,
                  controller.jkC.text,
                  controller.ibuC.text,
                  controller.ayahC.text,
                  controller.alamatC.text,
                  controller.pbC.text,
                  controller.beratC.text,
                  controller.lingkarC.text),
              child: Text("ADD DATA"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 40, 118, 44))),
            ),
          ]),
        ),
      ),
    );
  }
}
