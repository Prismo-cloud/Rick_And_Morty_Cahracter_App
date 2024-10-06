import 'package:flutter/material.dart';

class CharacterChardview extends StatelessWidget {
  const CharacterChardview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              'https://rickandmortyapi.com/api/character/avatar/147.jpeg',
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Donna Gueterman',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 7,
                ),
                _infoWidget(),
                _infoWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column _infoWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Köken',
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
        ),
        Text(
          'unknowaaaan',
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
