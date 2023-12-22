import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Credits extends StatelessWidget {
  Credits({super.key});

  final Uri _uri = Uri.parse('https://www.linkedin.com/in/thiago-49213b24b/');

  void _launcher() async {
    if (!await launchUrl(_uri)) {
      print('Error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Bem-Vindo ao Game Station.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              'O aplicativo Game Station  é uma loja virtual para que qualquer gamer consiga comprar seu jogo preferido.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 21.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, top: 20.0),
            child: Text(
              'Made by: \n Thiago Alves \n Email: thiagocontato1232@gmail.com',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
          ),
          GestureDetector(
            onTap: _launcher,
            child: Text(
              'Linkedin: \n https://www.linkedin.com/in/thiago-49213b24b/',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                  fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
