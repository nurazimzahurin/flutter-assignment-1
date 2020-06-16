import 'package:firebase_auth/firebase_auth.dart';
import 'package:training_assignment_1/services/database.dart';

class AuthService {

  final  FirebaseAuth _auth = FirebaseAuth.instance;

  //register with email/pass
  Future register(String name, String phone, String email, String password) async {
    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      await DatabaseService(uid: user.uid).createInitProfile(name, phone, email, password);
      if(user != null){
        return true;
      }
    }catch(e){
      return e.message;
    }
  }
}