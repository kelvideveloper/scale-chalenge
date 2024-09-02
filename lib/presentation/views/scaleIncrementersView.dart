import 'package:flutter/material.dart';
import 'package:remember/presentation/providers/listItensProvider.dart';

class ScaleIcrementersView extends StatelessWidget {
  final ItemModel itens_observable;
  ScaleIcrementersView({
    super.key,
    required this.itens_observable,
  });

  void incrementScale(int index) {
    itens_observable.incrementScale(index);
  }

  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.15,
      child: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 5,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        children: [
          ElevatedButton(
            onPressed: () {
              incrementScale(0);
            },
            child: Icon(
              Icons.add,
              color: Colors.white70,
            ),
            style: ElevatedButton.styleFrom(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              backgroundColor: Colors.amber,
            ),
          ),
          ElevatedButton(
            onPressed: () => incrementScale(1),
            child: Icon(
              Icons.add,
              color: Colors.white70,
            ),
            style: ElevatedButton.styleFrom(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              backgroundColor: Colors.lightBlue,
            ),
          ),
          ElevatedButton(
            onPressed: () => incrementScale(2),
            child: Icon(
              Icons.add,
              color: Colors.white70,
            ),
            style: ElevatedButton.styleFrom(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              backgroundColor: Colors.lightGreen,
            ),
          ),
          ElevatedButton(
            onPressed: () => incrementScale(3),
            child: Icon(
              Icons.add,
              color: Colors.white70,
            ),
            style: ElevatedButton.styleFrom(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              backgroundColor: Colors.purple[400],
            ),
          ),
        ],
      ),
    );
  }
}
