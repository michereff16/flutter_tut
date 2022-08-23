import 'package:flutter/material.dart';

class BotaoTeste extends StatefulWidget {
  const BotaoTeste({Key? key}) : super(key: key);

  @override
  State<BotaoTeste> createState() => _BotaoTesteState();
}

class _BotaoTesteState extends State<BotaoTeste> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teste Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Ações');
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/honk.png'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Widget de texto',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: isSwitch ? Colors.green : Colors.blue),
              onPressed: () {
                debugPrint('Botão Elevado');
              },
              child: const Text('Botão Elevado'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Botão Delineado');
              },
              child: const Text('Botão Delineado'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Botão de Texto');
              },
              child: const Text('Botão de Texto'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('Widget de linha clicado');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text('Widget de linha'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(
                  () {
                    isSwitch = newBool;
                  },
                );
              },
            ),
            Checkbox(
              value: isCheckbox,
              onChanged: (bool? newBool) {
                setState(
                  () {
                    isCheckbox = newBool;
                  },
                );
              },
            ),
            Image.network(
                'https://c.tenor.com/q1A3UVgCQC0AAAAC/pepega-reading.gif')
          ],
        ),
      ),
    );
  }
}
