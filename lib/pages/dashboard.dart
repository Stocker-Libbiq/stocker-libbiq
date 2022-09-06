import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              color: Colors.blue,
              width: MediaQuery.of(context).size.width / 5,
              height: MediaQuery.of(context).size.height / 1.035,
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.035,
              ),
            ),
          ],
        ),
        Container(
          color: Colors.amber,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 30,
          child: const Text('Stocker Libbiq V1.0.0', 
            style: TextStyle(fontSize: 10.0)
          ),
        ),
      ],
    );
  }
}