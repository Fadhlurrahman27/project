import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/dialog/dialog_route.dart';

class AddBalitaController extends GetxController {
  late TextEditingController nibC;
  late TextEditingController namaC;
  late TextEditingController tglC;
  late TextEditingController jkC;
  late TextEditingController ibuC;
  late TextEditingController ayahC;
  late TextEditingController alamatC;
  late TextEditingController pbC;
  late TextEditingController beratC;
  late TextEditingController lingkarC;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void addBalita(
      String nib,
      String nama,
      String tgl,
      String jk,
      String ibu,
      String ayah,
      String alamat,
      String pb,
      String berat,
      String lingkar) async {
    CollectionReference balita = firestore.collection("balita");

    try {
      await balita.add({
        "NIB": nib,
        "Nama": nama,
        "Tanggal Lahir": tgl,
        "Jenis Kelamin": jk,
        "Nama Ibu": ibu,
        "Nama Ayah": ayah,
        "Alamat": alamat,
        "Panjang Badan": pb,
        "Berat Lahir": berat,
        "Lingkar Kepala": lingkar,
      });
      Get.defaultDialog(
        title: "Berhasil",
        middleText: "Berhasil Menambahkan Data",
        onConfirm: () {
          nibC.clear();
          namaC.clear();
          tglC.clear();
          jkC.clear();
          ibuC.clear();
          ayahC.clear();
          alamatC.clear();
          pbC.clear();
          beratC.clear();
          lingkarC.clear();
          Get.back();
        },
        textConfirm: "OKAY",
      );
    } catch (e) {
      print(e);
      Get.defaultDialog(
        title: "Terjadi Kesalahan",
        middleText: "Tidak berhasil menambahkan data!",
      );
    }
  }

  @override
  void onInit() {
    nibC = TextEditingController();
    namaC = TextEditingController();
    tglC = TextEditingController();
    jkC = TextEditingController();
    ibuC = TextEditingController();
    ayahC = TextEditingController();
    alamatC = TextEditingController();
    pbC = TextEditingController();
    beratC = TextEditingController();
    lingkarC = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    nibC.dispose();
    namaC.dispose();
    tglC.dispose();
    jkC.dispose();
    ibuC.dispose();
    ayahC.dispose();
    alamatC.dispose();
    pbC.dispose();
    beratC.dispose();
    lingkarC.dispose();
    super.onClose();
  }
}
