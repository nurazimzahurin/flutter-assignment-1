import 'package:flutter/material.dart';
import 'package:training_assignment_1/services/auth.dart';
import 'package:geolocator/geolocator.dart';
import 'package:training_assignment_1/services/database.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final AuthService _auth = AuthService();
  Position _currentPosition;
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  String name;

  getUsername() async {
    var value = await _auth.currentUser();

    setState(() {
      name = value;
    });
    
  }
  @override
  void initState() {
    getUsername();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
              child: Stack(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.4,
                    color: Color.fromRGBO(232, 165, 52, 1),
                  ),Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.6,
                    color: Color.fromRGBO(241, 241, 241, 1),
                  ),
                  
                  
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 20,
                    child: Text('Edit Photo', style: TextStyle(fontSize: 12)),
                  ), //edit photo
                  SizedBox(
                    height: 7,
                  ),
                  SizedBox(
                    height: 30,
                    child: Text(
                      name != null ? name : 'Loading ...',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ), //nama
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                    child: Container(
                      height: 300,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Phone number',
                              style: TextStyle(fontSize: 14, color: Colors.grey),
                            ),
                            TextField(controller: _phoneController,),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Email Address',
                              style: TextStyle(fontSize: 14, color: Colors.grey),
                            ),
                            TextField(controller: _emailController,),
                            SizedBox(height: 50),
                            InkWell(
                                onTap: () {
                                  _getCurrentLocation();
                                },
                                child: Text('Get Location',
                                    style: TextStyle(
                                        color: Color.fromRGBO(34, 27, 227, 1)))),
                            SizedBox(height: 10,),
                            if (_currentPosition != null)
                            Text("LN ${_currentPosition.longitude}  LT ${_currentPosition.latitude}"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                              width: 160,
                              child: RaisedButton(
                                color: Color.fromRGBO(147, 147, 147, 1),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                          SizedBox(
                              width: 160,
                              child: RaisedButton(
                                color: Color.fromRGBO(232, 165, 52, 1),
                                onPressed: () async {
                                  dynamic result = await AuthService().getUser();
                                  if(result != null){
                                  DatabaseService(uid: result).updateProfile(_emailController.text, _phoneController.text);
                                  print('yes');
                                  }else{
                                    print('no');
                                  }
                                },
                                child: Text(
                                  'Save',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _getCurrentLocation() {
    final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });
    }).catchError((e) {
      print(e);
    });
  }
}
