import 'package:flutter/material.dart';

class FitnessHistoryScreen extends StatelessWidget {
  const FitnessHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('История'),
      ),
      body: ListView.builder(
        itemCount: 7, // Example number of days
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                title: Text(
                  '${27 - index} Мая',
                  style: const TextStyle(color: Colors.white),
                ),
                subtitle: const Text(
                  '12,4 km • 1222 kcal',
                  style: TextStyle(color: Colors.white60),
                ),
                trailing: const Text(
                  '11,120 Шагов',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
