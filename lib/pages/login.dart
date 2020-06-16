import 'package:flutter/material.dart';
import 'package:training_assignment_1/pages/register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Color gradientStart = Colors.blue[100];
  Color gradientEnd = Colors.purple[500];

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(28.0),
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors: [gradientStart, gradientEnd],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: SingleChildScrollView(
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
                    controller: _emailController,
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
                  controller: _passwordController,
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
                      if (_emailController.text == 'test' &&
                          _passwordController.text == 'test') {
                        Navigator.of(context).pushReplacementNamed('/2');
                      } else {
                        print('no');
                      }
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Forgot password?',
                    style: TextStyle(color: Colors.indigo[900]),
                  ),
                  SizedBox(width:10),
                  new InkWell(
                      child: new Text('Register', style: TextStyle(color:Colors.indigo[900]),),
                      onTap: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()),
                            )
                          }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
