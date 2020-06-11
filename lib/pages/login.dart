import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Image.asset('images/malakat.png')],
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Sign in',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: SizedBox(
              height: 60,
                          child: TextField(
        
                decoration: InputDecoration(
                  
                  hintText: 'Email Address',
                  border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.grey)),
                  prefixIcon: new Padding(
                    padding: const EdgeInsets.only(
                        top: 15, left: 5, right: 0, bottom: 15),
                    child: new SizedBox(
                      height: 3,
                      child: Image.asset('images/mail.png'),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                border: new OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.grey)),
                prefixIcon: new Padding(
                  padding: const EdgeInsets.only(
                      top: 15, left: 5, right: 0, bottom: 15),
                  child: new SizedBox(
                    height: 3,
                    child: Image.asset('images/lock.png'),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: SizedBox(
              width: double.infinity,
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/2');
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.redAccent[700])),
                color: Colors.red[700],
                textColor: Colors.white,
              ),
            ),
          ),
          Text(
            'Forgot password?',
            style: TextStyle(color: Colors.indigo[900]),
          )
        ],
      )),
    );
  }
}
