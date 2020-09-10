import 'package:flutter/material.dart';
class login extends StatefulWidget {


  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {

  final GlobalKey<FormState> _formkey= GlobalKey();

  void _login()
  {

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        actions: <Widget>[],
      ),
      body: Stack(
        children: <Widget>[
          FlatButton(
            child: Row(
              children: <Widget>[
                Text('signup'),
                Icon(Icons.person_add)
              ],
            ),
            onPressed: (){

            },
          ),

          Container(
            decoration: BoxDecoration(
              color: Colors.orangeAccent
            ),
          ),
          Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                height: 260,
                width: 300,
                padding: EdgeInsets.all(16.0),
                child: Form(
                   key: _formkey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[

                        TextFormField(
                          decoration: InputDecoration(labelText: 'mobile'),
                          keyboardType: TextInputType.phone,

                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'password'),
                          obscureText: true,

                        ),
                        RaisedButton(
                          child: Text(
                            'Login'
                          ),
                          onPressed: ()
                            {
                              _login();
                            },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)
                          ),
                          color: Colors.white,
                          textColor: Colors.black,

                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
