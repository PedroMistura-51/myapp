import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove o banner "DEBUG"
      home: Scaffold(
        body: Column(
          children: [
            // Layout Superior
            Container(
              color: Colors.purple,
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text(
                  'Programa Layout',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // Espaço para "Meu Aplicativo" (tamanho de tela de smartphone)
            Expanded(
              child: Center(
                child: Container(
                  width: 250, // Largura maior, similar a uma tela de smartphone
                  height: 450, // Altura ajustada
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Center(
                    child: Text(
                      'Meu Aplicativo',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Layout Inferior
            Container(
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text(
                  'Layout Inferior',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}