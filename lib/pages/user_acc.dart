import 'package:flutter/material.dart';

class UserAcc extends StatelessWidget {

  void _editDetails()
  {

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
          'User Account',
          style: TextStyle(
            color:Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Form(
          child:SingleChildScrollView(
            child: Column(
              children:<Widget> [
                SizedBox(height:40.0),

                Stack(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.orangeAccent,
                      radius: 70,
                      child: ClipOval(child: Image.asset('', height: 150, width: 150, fit: BoxFit.cover,),),
                    ),
                    Positioned(bottom: 1, right: 1 ,child: Container(
                      height: 40, width: 40,
                      child: Icon(Icons.add_a_photo, color: Colors.white,),
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                    ))
                  ],
                ),








                SizedBox(height:20.0),
                Text(
                      'Full Name'

                    ),

                SizedBox(height:20.0),

                Text(
                      'NIC'
                    ),
                SizedBox(height:20.0),

                Text(
                      'Email'
                    ),
                SizedBox(height:20.0),

                Text(
                      'Home Address'
                    ),
                SizedBox(height:20.0),

                Text(
                      'Telephone'
                    ),
                SizedBox(height:20.0),

                Text(
                      'Date Of Birth'
                    ),
                SizedBox(height:30.0),





                SizedBox(height: 30.0,width: 40,),
                FlatButton.icon
                  (onPressed: () {},
                  icon: Icon(Icons.save),
                  label: Text('Edit details'),
                ),



              ],

            ),
          ),
        ),
      ),


    );
  }
}