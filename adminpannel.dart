import 'package:flutter/material.dart';

class adminpannel extends StatefulWidget {
  const adminpannel({super.key});

  @override
  State<adminpannel> createState() => _adminpannelState();
}

class _adminpannelState extends State<adminpannel> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 35),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/food.jpg'),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            alignment: Alignment.topCenter,
            children: [
              Text(
                'ADMIN PANNEL\n\n',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '\n\n30 Today Deliveries',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                transformAlignment: AlignmentDirectional.bottomCenter,
                margin: EdgeInsets.only(
                    left: 450, right: 400, top: 300, bottom: 300),
                padding: EdgeInsets.only(left: 50, right: 50),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 228, 92, 2),
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(153, 240, 196, 2),
                      Color.fromARGB(66, 238, 38, 3)
                    ]),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green,
                        blurRadius: 5,
                        spreadRadius: 5,
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'DELIVERY AGENTS',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pushNamed(context, 'DeliveryAgent');
                        },
                        icon: Icon(Icons.arrow_forward))
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                transformAlignment: AlignmentDirectional.bottomStart,
                margin: EdgeInsets.only(
                    left: 450, right: 400, top: 400, bottom: 200),
                padding: EdgeInsets.only(left: 50, right: 50),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 228, 92, 2),
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(153, 240, 196, 2),
                      Color.fromARGB(66, 238, 38, 3)
                    ]),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green,
                        blurRadius: 5,
                        spreadRadius: 5,
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'OUR CUSTOMERS',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pushNamed(context, 'DeliveryAgentForm');
                        },
                        icon: Icon(Icons.arrow_forward))
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'main');
                },
                child: Text(
                  '<-',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
            ],
          ),
        ));
  }
}
