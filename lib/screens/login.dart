import 'package:flutter/material.dart';
import 'package:untitled4/screens/sign_up.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String email, password;
  bool rememberMe = false;

  Widget background() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Text(
            "Sign In",
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: MediaQuery.of(context).size.height / 14.0,
                color: Colors.white),
          ),
        )
      ],
    );
  }

  Widget userEmail() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            email = value;
          });
        },
        decoration: const InputDecoration(
            prefixIcon: Icon(
              Icons.alternate_email_rounded,
              color: Color(0xfffb77e8),
            ),
            labelText: 'E-mail'),
      ),
    );
  }

  Widget userPassword() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        onChanged: (value) {
          setState(() {
            password = value;
          });
        },
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: Color(0xfffb77e8),
          ),
          labelText: 'Password',
        ),
      ),
    );
  }

  Widget forgetPassword() {
    return Row(
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          padding: const EdgeInsets.only(left: 205.0),
          child: const Text(
            "Forgot Password?",
            style: const TextStyle(color: Colors.black45, fontSize: 15.0),
          ),
        ),
      ],
    );
  }

  Widget _rememberMe() {
    return Container(
      height: 45.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: const Color(0xfffb77e8)),
            child: Checkbox(
              value: rememberMe,
              checkColor: Colors.teal.shade600,
              activeColor: Colors.white70,
              onChanged: (value) {
                setState(() {
                  rememberMe = value!;
                });
              },
            ),
          ),
          const Text(
            'Remember me',
            style: TextStyle(color: Colors.black87, fontSize: 15.0),
          ),
        ],
      ),
    );
  }

  Widget login() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.4 * (MediaQuery.of(context).size.height / 20),
          width: 5 * (MediaQuery.of(context).size.width / 10),
          margin: const EdgeInsets.only(bottom: 20),
          child: RaisedButton(
            elevation: 5.0,
            color: const Color(0xfff954e1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            onPressed: () {},
            child: Text(
              "LOGIN",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.5,
                fontSize: MediaQuery.of(context).size.height / 40,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget signUp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: FlatButton(
            onPressed: () {},
            child: GestureDetector(
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterPage()))
              },
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Don\'t have an Account? ',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                      ),
                    ),
                    TextSpan(
                      text: 'Sign up',
                      style: TextStyle(
                        color: Color(0xfff954e1),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
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

  Widget myContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(50),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                userEmail(),
                userPassword(),
                forgetPassword(),
                _rememberMe(),
                const SizedBox(height: 40.0),
                login(),
                signUp(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 40,
            backgroundColor: const Color(0xfffb77e8),
            // actions: <Widget>[
            //   IconButton(
            //       alignment: Alignment.centerLeft,
            //       icon: const Icon(Icons.arrow_back_ios),
            //       color: Colors.white,
            //       onPressed: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(builder: (context) => LoginPage()),
            //         );
            //       })
            // ]
        ),
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(90),
                          bottomLeft: Radius.circular(90)),
                      child: Container(
                          constraints: const BoxConstraints.expand(),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/bk.JPG"),
                              fit: BoxFit.fill,
                            ),
                          )))),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  background(),
                  myContainer(),
                ],
              )
            ],
          ),
          //       )),
          // );
        ));
  }
}
