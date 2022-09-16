import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: Column(
            children: [
              Row(
                children: [
                  Container(
                    color: Colors.blue,
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 1.11,
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text('Inicio'),
                            Icon(Icons.home)
                          ],
                        ),
                        Text('Reactivos'),
                        Text('Stock'),
                        Text('Estadisticas'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.11,
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.amber,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 30,
                child: const Text('Stocker Libbiq V1.0.0',
                    style: TextStyle(fontSize: 10.0)),
              ),
            ],
          )),
    );
  }
}
