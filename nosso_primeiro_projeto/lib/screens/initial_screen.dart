import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Flutter: Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 1000),
        child: ListView(
          children: const [
            Task('Aprender Flutter', 'assets/images/dash.png', 3),
            Task('Aprender React-Native', 'assets/images/bike.webp', 2),
            Task('Aprender JavaScript', 'assets/images/meditar.jpeg', 5),
            Task('Aprender React', 'assets/images/livro.jpg', 4),
            Task('Aprender TypeScript', 'assets/images/jogar.jpg', 1),
            Task('Aprender Python', 'assets/images/dash.png', 4),
            Task('Aprender Power Bi', 'assets/images/bike.webp', 3),
            Task('Aprender Segurança', 'assets/images/livro.jpg', 5),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
