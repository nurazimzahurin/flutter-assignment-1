import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;

  DatabaseService({this.uid});

  final CollectionReference profileCollection =
      Firestore.instance.collection('profile');

  Future createInitProfile(
      String name, String phoneNumber, String email, String password) async {
    return await profileCollection
        .document(uid)
        .setData({'name': name, 'email': email, 'phoneNumber': phoneNumber, 'password': password});
  }

  Future getProfile() async {
    return await profileCollection.document(uid).get().then((document) => document.data);
  }

  Future updateProfile(String email, String phone) async {
    return await profileCollection.document(uid).updateData({'email': email, 'phoneNumber': phone});
  }
}