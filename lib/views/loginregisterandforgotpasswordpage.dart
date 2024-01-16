import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var userNameTextEditController = TextEditingController();
  String textFieldData = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('HomePage'),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: TextField(
                  controller: userNameTextEditController,
                  keyboardType: TextInputType.text,
                  maxLength: 5,
                  style: TextStyle(
                      // color: Colors.orange,
                      ),
                  textAlign: TextAlign.start,
                  // cursorColor: Colors.orange,
                  maxLines: 1,
                  autofocus: true,
                  obscureText: false,
                  readOnly: false,
                  decoration: InputDecoration(
                      hintText: 'Enter your name',
                      hintStyle: TextStyle(
                          //color: Colors.purple,
                          ),
                      helperText: 'en azi bir boyuk herf istifade etmelisiniz',
                      helperStyle: TextStyle(color: Colors.black),
                      labelText: 'Username',
                      labelStyle: TextStyle(
                          //color: Colors.purple,
                          ),
                      prefixIcon: Icon(Icons.email_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.visibility_off_outlined),
                      )),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(
                    () {
                      textFieldData = userNameTextEditController.text;
                    },
                  );
                },
                child: Text('textfielde yazilan data:$textFieldData'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
