import '../models/destination.dart';

class FavoriteService {
  final List<String> _favorites = [];
    void addFavorite(String destinationId) {
    if (!_favorites.contains(destinationId)) {
      _favorites.add(destinationId);
    }
  }

  void removeFavorite(String destinationId) {
    _favorites.remove(destinationId);
  }

  List<String> getFavorites() {
    return List.unmodifiable(_favorites);
  }

  bool isFavorite(String destinationId) {
    return _favorites.contains(destinationId);
  }
}

