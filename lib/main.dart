import 'package:flutter/material.dart';
import 'package:remember/data/models/item.dart';
import 'package:remember/presentation/providers/listItensProvider.dart';
import 'package:remember/presentation/views/itensListView.dart';
import 'package:remember/presentation/views/restartListButtonView.dart';
import 'package:remember/presentation/views/scaleIncrementersView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chalenge',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Scale chalenge'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final itens_observable = ItemModel();
    final height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          const Spacer(),
          Container(
            height: 3,
            width: width * 0.94 + 3,
            color: Colors.grey.withOpacity(0.4),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: width * 0.01,
              ),
              Container(
                height: height * 0.55,
                width: 3,
                color: Colors.grey.withOpacity(0.4),
              ),
              ItenslistView(
                itens_observable: itens_observable,
              ),
              Container(
                height: height * 0.55,
                width: 3,
                color: Colors.grey.withOpacity(0.4),
              ),
              SizedBox(
                width: width * 0.01,
              ),
            ],
          ),
          Container(
            height: 3,
            width: width * 0.94 + 3,
            color: Colors.grey.withOpacity(0.4),
          ),
          const Spacer(),
          ScaleIcrementersView(
            itens_observable: itens_observable,
          ),
          RestartButtonView(
            itens_observable: itens_observable,
          ),
          const Spacer()
        ],
      ),
    );
  }
}
