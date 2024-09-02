import 'package:flutter/material.dart';
import 'package:remember/presentation/providers/listItensProvider.dart';

class RestartButtonView extends StatelessWidget {
  final ItemModel itens_observable;
  const RestartButtonView({
    super.key,
    required this.itens_observable,
  });

  void restart() {
    itens_observable.restart();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        restart();
      },
      child: Icon(
        Icons.restart_alt,
        size: 40,
        color: Colors.white70,
      ),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[300]),
    );
  }
}
