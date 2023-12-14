import 'package:flutter/material.dart';

class DeliveryAgent extends StatefulWidget {
  const DeliveryAgent({super.key});

  @override
  State<DeliveryAgent> createState() => _DeliveryAgentState();
}

class _DeliveryAgentState extends State<DeliveryAgent> {
  final List<String> items = [
    'VIKASH KUMAR',
    'YASH SINGH',
    'GAURAV KUMAR',
    'SAURAV KUMAR',
    'MANOJ PAL',
    'AMIT KUMAR',
    'ROHAN KUMAR',
    'SOHAN KUMAR',
    'ANKIT KUMAR',
    'SATYAM KUMAR',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('DELIVERY AGENT'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                contentPadding: EdgeInsets.all(16),
                title: Text(
                  items[index],
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Subtitle for ${items[index]}',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                onTap: () {
                  // Handle item tap
                },
              ),
            );
          },
        ));
  }
}
