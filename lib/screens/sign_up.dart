import 'package:flutter/material.dart';
import 'package:untitled4/screens/login.dart';


class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late String email, password, value, _selectedGender;

  Widget background() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Text(
            "Sign Up",
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

  Widget fullName() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        keyboardType: TextInputType.name,
        onChanged: (value) {
          setState(() {});
        },
        decoration: const InputDecoration(
            prefixIcon: Icon(
              Icons.perm_identity_rounded,
              color: Color(0xfffb77e8),
            ),
            labelText: 'Full Name'),
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

  Widget confirmPassword() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.text,
        // controller: confirmPass,
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
          labelText: 'Confirm Password',
        ),
      ),
    );
  }

  Widget age() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.datetime,
        obscureText: false,
        onChanged: (value) {
          setState(() {});
        },
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.date_range_rounded,
            color: Color(0xfffb77e8),
          ),
          labelText: 'Age',
        ),
      ),
    );
  }

  Widget nationality() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Radio(value: 1, groupValue: 'null', onChanged: (index) {}),
                  const Text('Saudi')
                ],
              ),
              Row(
                children: [
                  Radio(value: 1, groupValue: 'null', onChanged: (index) {}),
                  const Text('Non-Saudi')
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget gender() {
    // return Padding(
    //      padding: EdgeInsets.all(8),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Text('Please let us know your gender:'),
    //         ListTile(
    //           leading: Radio(
    //             value: 'male',
    //             groupValue: _selectedGender,
    //             onChanged: (value) {
    //               setState(() {
    //                 // ignore: unnecessary_statements
    //                 _selectedGender = value;
    //               });
    //             },
    //           ),
    //           title: Text('Male'),
    //         ),
    //         ListTile(
    //           leading: Radio(
    //             value: 'female',
    //             groupValue: _selectedGender,
    //             onChanged: (value) {
    //               setState(() {
    //                 // ignore: unnecessary_statements
    //                 _selectedGender = value;
    //               });
    //             },
    //           ),
    //           title: Text('Female'),
    //         ),
    //         SizedBox(height: 25),
    //         Text(_selectedGender == 'male' ? 'Hello gentlement!' : 'Hi lady!')
    //       ],
    //     ),
    // );
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Radio(
                      value: 'Male',
                      groupValue: '_selectedGender',
                      onChanged: (value) {
                        setState(() {
                          _selectedGender = this.value;
                        });
                      }),
                  const Text('Male')
                ],
              ),
              Row(
                children: [
                  Radio(
                      value: 'Female',
                      groupValue: '_selectedGender',
                      onChanged: (value) {
                        setState(() {
                          _selectedGender = this.value;
                        });
                      }),
                  const Text('Female')
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget createAccount() {
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
              "CREATE ACCOUNT",
              style: TextStyle(
                color: Colors.white,
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
                    MaterialPageRoute(builder: (context) => LoginPage()))
              },
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Already have an Account? ',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                      ),
                    ),
                    TextSpan(
                      text: 'Sign in',
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    fullName(),
                    userEmail(),
                    userPassword(),
                    confirmPassword(),
                    age(),
                    gender(),
                    nationality(),
                    const SizedBox(height: 20.0),
                    createAccount(),
                    signUp(),
                  ],
                ),
              )),
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
                          image: const DecorationImage(
                            image: AssetImage("images/bk.JPG"),
                            fit: BoxFit.fill,
                          ),
                        )))),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[background(), myContainer()],
            )
          ],
        ),
      ),
      // ));
    );
  }
}
