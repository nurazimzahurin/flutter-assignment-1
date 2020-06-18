import 'package:flutter/material.dart';
import 'package:training_assignment_1/services/auth.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Color gradientStart = Color.fromRGBO(173, 37, 37, 1);
  Color gradientEnd = Color.fromRGBO(232, 165, 52, 1);

  final AuthService _auth = AuthService();

  String name = '';
  String phone = '';
  String email = '';
  String password = '';
  String error = '';

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.all(28.0),
              decoration: new BoxDecoration(
                gradient: new LinearGradient(
                    colors: [gradientStart, gradientEnd],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                    Icon(
                      Icons.shopping_basket,
                      size: 130,
                      color: Colors.white,
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                        onChanged: (val) {
                          setState(() {
                            name = val;
                          });
                        },
                        controller: _nameController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Name',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10)),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                        onChanged: (val) {
                          setState(() {
                            phone = val;
                          });
                        },
                        controller: _phoneController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Phone Number',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10)),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                        onChanged: (val) {
                          setState(() {
                            email = val;
                          });
                        },
                        controller: _emailController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Email Address',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10)),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                        onChanged: (val) {
                          setState(() {
                            password = val;
                          });
                        },
                        controller: _passwordController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10)),
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 70,
                      child: Builder(
                        builder: (context) => FlatButton(
                          onPressed: () async {
                            dynamic result = await _auth.register(
                                name, phone, email, password);
                            if (result == true) {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  '/2', (Route<dynamic> route) => false);
                            } else {
                              setState(() {
                                error = result;
                                Scaffold.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text(
                                    error,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )),
                                );
                              });
                            }
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                  color: Color.fromRGBO(151, 69, 69, 1))),
                          color: Color.fromRGBO(151, 69, 69, 1),
                          textColor: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
