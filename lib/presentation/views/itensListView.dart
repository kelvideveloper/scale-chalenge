import 'package:flutter/material.dart';
import 'package:remember/data/models/item.dart';
import 'package:remember/presentation/providers/listItensProvider.dart';

class ItenslistView extends StatefulWidget {
  final ItemModel itens_observable;
  const ItenslistView({
    super.key,
    required this.itens_observable,
  });

  @override
  State<ItenslistView> createState() => _ItenslistViewState();
}

class _ItenslistViewState extends State<ItenslistView> {
  List<Color> colors = [
    Colors.amber,
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final width = MediaQuery.of(context).size.width;

    return ListenableBuilder(
        listenable: widget.itens_observable,
        builder: (BuildContext context, Widget? chield) {
          return SizedBox(
            height: height * 0.55,
            width: width * 0.9,
            child: ListView.separated(
              itemCount: widget.itens_observable.itens.length,
              padding: const EdgeInsets.only(top: 15),
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, i) => Container(
                height: (height * 0.45) *
                    (widget.itens_observable.itens[i].scale /
                        widget.itens_observable
                            .getScaleSum()), //multiplica o total pela proporção do elemento atual
                color: colors[i],
                child: Text(
                  widget.itens_observable.itens[i].name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
          );
        });
  }
}
