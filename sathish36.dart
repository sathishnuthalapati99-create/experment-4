import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({super.key});

  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              'Login',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.cyan,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                    controller: name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      label: Text("UserName  ",style: TextStyle(color: Colors.white)),

                      prefixIcon: Icon(Icons.person, color: Colors.cyan),
                      focusedBorder: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.cyan
                              ,width: 2)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              color: Colors.black12,
                              width: 2
                          )
                      ),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                    controller: password,
                    obscureText: true,
                    decoration: InputDecoration(
                      label: Text("Password  ",style: TextStyle(color: Colors.white)),
                      prefixIcon: Icon(Icons.lock,color: Colors.cyan),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.cyan
                              ,width: 2)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              color: Colors.black12,
                              width: 2
                          )
                      ),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              ElevatedButton(onPressed: (){},
                child: Text("Login"),



              ),
            ),
            Text(
              "Don't Have An Account? Sign Up",

              style: TextStyle(
                fontSize: 14.0,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

