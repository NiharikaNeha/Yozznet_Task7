import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  void initState() {
    super.initState();
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 150.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  validator: (String value) {
                    if(value.isEmpty) {
                      return 'Pl enter email address';
                    }
                  },
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'abc.xyz@gmail.com',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)
                    )
                  ),
                ),
              ),
              SizedBox(height: 30.0,),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: pwdController,
                  validator: (String value) {
                    if(value.isEmpty) {
                      return 'Pl enter password';
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                      )
                  ),
                ),
              ),
              SizedBox(height: 50.0,),
              RaisedButton(
                child: Text(
                  'Submit',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed("/HomePage");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
