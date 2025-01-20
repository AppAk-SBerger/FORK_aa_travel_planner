import 'package:aa_travel_planner/favorites_repository.dart';
import 'package:aa_travel_planner/main.dart';
import 'package:flutter/material.dart';

class elevated_button_remove_from_favorites extends StatelessWidget {
  const elevated_button_remove_from_favorites({
    super.key,
    required this.favoritesRepository,
    required this.destination,
  });

  final FavoritesRepository favoritesRepository;
  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        favoritesRepository.removeFavorite(destination);
        Navigator.pop(context);
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
      child: const Text(
        'Remove from Favorites',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
