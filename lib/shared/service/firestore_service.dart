import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class FireStoreService extends GetxService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<FireStoreService> init() async {
    return this;
  }
}
