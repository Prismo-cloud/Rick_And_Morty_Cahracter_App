import 'package:flutter/material.dart';
import 'package:testapp/views/widgets/character_chardView.dart';

class CharactersView extends StatelessWidget {
  const CharactersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            children: [_searchInputWidget(context), const CharacterChardview()],
          ),
        ),
      ),
    );
  }

  Widget _searchInputWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 16),
      child: TextField(
        decoration: InputDecoration(
            labelText: 'Karakterlerde Ara',
            labelStyle:
                TextStyle(color: Theme.of(context).colorScheme.onSurface),
            border: OutlineInputBorder(),
            prefixIcon: const Icon(Icons.search),
            suffixIcon: IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert))),
      ),
    );
  }
}
