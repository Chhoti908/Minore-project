import 'package:flutter/material.dart';

class secondloginpage extends StatefulWidget {
  const secondloginpage({super.key});

  @override
  State<secondloginpage> createState() => _secondloginpageState();
}

class _secondloginpageState extends State<secondloginpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 600, right: 400),
              child: Text(
                'WELCOM LOGIN PAGE',
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.lime),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4,
                  left: 400,
                  right: 400,
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.indigo.shade100,
                          filled: true,
                          hintText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.indigo.shade100,
                          filled: true,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'SBMIT',
                              style: TextStyle(
                                fontSize: 20,
                                decoration: TextDecoration.underline,
                                color: Colors.white,
                                backgroundColor: Colors.indigo.shade100,
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 4, 206, 206)),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.indigo.shade100,
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pushNamed(context, 'Register');
                            },
                            icon: Icon(Icons.arrow_forward),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontSize: 22,
                                  decoration: TextDecoration.underline,
                                  color: Color.fromARGB(255, 10, 236, 161)),
                            )),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forget pasword',
                            style: TextStyle(
                                fontSize: 18,
                                decoration: TextDecoration.underline,
                                color: Color.fromARGB(255, 6, 230, 99)),
                          ),
                          style: ButtonStyle(),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'loginpage');
                },
                child: Text(
                  'BACK',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w100,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
