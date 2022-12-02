import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/cambio_proovider.dart';
import 'package:provider/provider.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cambio = Provider.of<CambioProvider>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: (cambio.dato == false)
            ? const Text('WELCOME')
            : const Text('Merry Christmas'),
        actions: [
          Switch(
            value: cambio.dato,
            onChanged: (value) {
              cambio.cambiar(value);
            },
          ),
          IconButton(
            onPressed: () {
              cambio.btncambiar();
            },
            icon: const Icon(Icons.add_location_rounded),
          ),
        ],
      ),
      body: Stack(
        children: [
          SizedBox(
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Visibility(
                visible: cambio.dato1,
                child: Container(
                  width: 150,
                  color: Colors.green,
                ),
              ),
              Visibility(
                visible: cambio.dato1,
                child: Container(
                  width: 150,
                  color: Colors.red,
                ),
              ),
              Visibility(
                visible: cambio.dato1,
                child: Container(
                  width: 150,
                  color: Colors.yellow,
                ),
              ),
              Container(
                width: 150,
                color: Colors.black12,
              ),
              Container(
                width: 150,
                color: Colors.black26,
              ),
              Container(
                width: 150,
                color: Colors.black38,
              ),
              Container(
                width: 150,
                color: Colors.purple,
              ),
            ]),
          ),
          Visibility(
              visible: cambio.dato1,
              child: Lottie.network(
                  'https://assets4.lottiefiles.com/packages/lf20_cgwai2nz.json')),
        ],
      ),
    );
  }
}
