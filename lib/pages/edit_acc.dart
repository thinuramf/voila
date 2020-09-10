import 'package:flutter/material.dart';

class editcust extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
          'Edit account details',
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

                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Full Name'
                  ),
                ),
                SizedBox(height:10.0),

                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'NIC'
                  ),
                ),
                SizedBox(height:10.0),

                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Email'
                  ),
                ),
                SizedBox(height:10.0),

                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Home Address'
                  ),
                ),
                SizedBox(height:10.0),

                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Telephone'
                  ),
                ),
                SizedBox(height:10.0),

                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Date Of Birth'
                  ),
                ),
                SizedBox(height:30.0),

                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:<Widget>[
                      FlatButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.add_a_photo,color: Colors.grey[600],),
                        label: Text(
                          "Upload a Photo",
                          style: TextStyle(
                            color:Colors.grey[600],
                            fontSize: 14,
                          ),
                        ),

                      ),

                    ]
                ),



                SizedBox(height: 30.0,),
                FlatButton.icon
                  (onPressed: () {},
                  icon: Icon(Icons.save),
                  label: Text('Save details'),
                ),



              ],

            ),
          ),
        ),
      ),


    );
  }
}