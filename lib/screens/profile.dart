import 'package:flutter/material.dart';

class profilePage extends StatelessWidget {
  Widget textfield({@required hintText}) {
    return Material(
      elevation: 9,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
                letterSpacing: 2,
                color: Colors.black54,
                fontFamily: 'Montserrat'),
            fillColor: Colors.white38,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide.none)),
      ),
    );
  }

  Widget logout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 250.0),
          child: FlatButton(
            onPressed: () {},
            child: GestureDetector(
              onTap: () => {

              },
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Logout',
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(0xfffb77e8),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset("images/bk.JPG",
              width: 500, height: 900, fit: BoxFit.cover),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    textfield(
                      hintText: 'Full Name',
                    ),
                    textfield(
                      hintText: 'Email',
                    ),
                    textfield(
                      hintText: 'Password',
                    ),
                    textfield(
                      hintText: 'Age',
                    ),
                    textfield(
                      hintText: 'Gender',
                    ),
                    textfield(
                      hintText: 'Nationality',
                    ),
                    Container(
                      height: 56,
                      width: double.infinity,
                      child: RaisedButton(
                        color: const Color(0xfffb77e8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            "Edit",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height / 40,
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              letterSpacing: 2.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    logout(),
                  ],
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Profile",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: MediaQuery.of(context).size.height / 14.0,
                    letterSpacing: 1.5,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}