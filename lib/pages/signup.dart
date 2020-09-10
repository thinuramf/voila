import 'package:flutter/material.dart';
class signup extends StatefulWidget {

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {

  final GlobalKey<FormState> _formkey= GlobalKey();

  TextEditingController _passwordController = new TextEditingController();
  void _SignUp()
  {

  }
  void _login(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp'),
      ),
      body: Stack(
        children: <Widget>[
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
                height: 600,
                width: 300,
                padding: EdgeInsets.all(16.0),
                child: Form(
                  key: _formkey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[

                        TextFormField(
                          decoration: InputDecoration(labelText: 'First Name'),
                          keyboardType: TextInputType.name,

                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Last Name'),
                          keyboardType: TextInputType.name,

                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Email'),
                          keyboardType: TextInputType.emailAddress,

                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'NIC'),
                          keyboardType: TextInputType.number,
                          validator: (value)
                          {
                            if(value.isEmpty || value.length<9)
                            {
                              return 'incorrect NIC';
                            }
                            return null;
                          },

                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Address'),
                          keyboardType: TextInputType.streetAddress,

                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'password'),
                          obscureText: true,
                          controller: _passwordController,

                          validator: (value)
                            {
                              if(value.isEmpty || value.length<=8)
                                {
                                  return 'weak password';
                                }
                              return null;
                            },
                          onSaved: (value)
                          {

                          },

                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'confirm password'),
                          obscureText: true,
                          validator: (value)
                          {
                            if(value.isEmpty || value != _passwordController.text)
                            {
                              return 'password mismatch';
                            }
                            return null;
                          },
                          onSaved: (value)
                          {

                          },

                        ),
                        SizedBox(height: 34,),
                        RaisedButton(
                          child: Text(
                              'SignUp'
                          ),
                          onPressed: ()
                          {
                            _SignUp();
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)
                          ),
                          elevation: 1.0,


                          color: Colors.white,
                          textColor: Colors.black,

                        ),
                        SizedBox(width: 10.0,),
                        FlatButton(
                          child: Text(
                              'login'
                          ),
                          onPressed: ()
                          {
                            _login();
                          },

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
