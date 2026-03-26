import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  Stream<String> getLoadingMessages() {
    final messages = <String>[
      'Cargando películas',
      'Cargando películas populares',
      'Cargando películas proximas',
      'Cargando películas top',
          'Cargando películas clásicas',
    ];

    return Stream.periodic(Duration(milliseconds: 1200), (step) {
      return messages[step];
    }).take(messages.length);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Espere por favor'),
          SizedBox(height: 10),
          LoadingAnimationWidget.threeArchedCircle(color: Colors.blueAccent, size: 30),
          SizedBox(height: 10),

          StreamBuilder(
            stream: getLoadingMessages(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return Text('Cargando...');

              return Text(snapshot.data!);
            },
          ),
        ],
      ),
    );
  }
}
