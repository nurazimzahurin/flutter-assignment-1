import 'package:firebase_auth/firebase_auth.dart';
import 'package:training_assignment_1/models/user.dart';
import 'package:training_assignment_1/services/database.dart';

class AuthService {

  final  FirebaseAuth _auth = FirebaseAuth.instance;

  //create user object from FirebaseUser
  User _userFromFirebaseUser (FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  //register with email/pass
  Future register(String name, String phone, String email, String password) async {
    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      await DatabaseService(uid: user.uid).createInitProfile(name, phone, email, password);
      return _userFromFirebaseUser(user);
    }catch(e){
      return e.message;
    }
  }
}