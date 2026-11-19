import 'package:flutter_test/flutter_test.dart';
import 'package:khmer_trip/models/destination.dart';
import 'package:khmer_trip/models/traveler.dart';
import 'package:khmer_trip/services/favorite.dart';

void main() {
  group('FavoriteService', () {
    late FavoriteService service;
    late Traveler traveler;
    late Destination destination;

    setUp(() {
      traveler = Traveler(id: 'traveler-1', name: 'Test Traveler');
      service = FavoriteService(traveler: traveler);
      destination = Destination(
        id: '1',
        name: 'Bokor Mountain',
        location: 'Kampot',
        categories: ['Mountains', 'Forests'],
        description: 'Mountain destination.',
        images: [],
        activities: ['Hiking'],
        dailyCost: 25.0,
      );
    });

    test('adds a destination to favorites', () {
      service.addFavorite(destination);

      expect(service.getFavorites(), [destination]);
      expect(service.isFavorite(destination.id), isTrue);
    });

    test('prevents duplicate favorites', () {
      service.addFavorite(destination);
      service.addFavorite(destination);

      expect(service.getFavorites(), hasLength(1));
    });

    test('removes a destination from favorites', () {
      service.addFavorite(destination);
      service.removeFavorite(destination.id);

      expect(service.getFavorites(), isEmpty);
      expect(service.isFavorite(destination.id), isFalse);
    });

    test('returns an empty list when there are no favorites', () {
      expect(service.getFavorites(), isEmpty);
    });
  });
}