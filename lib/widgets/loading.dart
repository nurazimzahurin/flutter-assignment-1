import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:training_assignment_1/services/auth.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  void initState() {
    getAuthUser();
    super.initState();
  }

  getAuthUser() async {
    var user = await AuthService().getUser();
    await Future.delayed(Duration(seconds: 2));
    if(user != null){
      Navigator.of(context).pushReplacementNamed('/2');
    }else{
      Navigator.of(context).pushReplacementNamed('/1');
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      color: Colors.blue,
      child: Center(
        child: SpinKitChasingDots(
          color: Colors.white, 
          size: 50,)
      ),
    ),
    );
  }
}