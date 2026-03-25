import 'package:cinetopia/ui/components/buttons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset("assets/images/logo.png", width: 200),
            Image.asset("assets/images/splash.png", width: 200),
            const Text(
              "O lugar ideial para buscar,salvar e organizar seus filmes favoritos!",
            ),
            PrimaryButton(),
          ],
        ),
      ),
    );
  }
}