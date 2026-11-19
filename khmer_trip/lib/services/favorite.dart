
import '../models/destination.dart';
import '../models/traveler.dart';

class FavoriteService {
  final Traveler traveler;
  FavoriteService({Traveler? traveler})
      : traveler = traveler ?? Traveler(id: 'default', name: 'Traveler');

  void addFavorite(Destination destination) {
    traveler.addFavorite(destination);
  }

  void removeFavorite(String destinationId) {
    traveler.removeFavorite(destinationId);
  }

  List<Destination> getFavorites() {
    return List.unmodifiable(traveler.favorites);
  }

  bool isFavorite(String destinationId) {
    return traveler.favorites.any(
      (destination) => destination.id == destinationId,
    );
  }
}

