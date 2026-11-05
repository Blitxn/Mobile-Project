import 'package:flutter_test/flutter_test.dart';
import 'package:khmer_trip/models/destination.dart';
import 'package:khmer_trip/services/favorite.dart';

void main() {
  group('FavoriteService', () {
    late FavoriteService service;

    setUp(() {
      service = FavoriteService();
    });

    test('adds a destination to favorites', () {
      // Arrange: Create a destination.

      // Act: Add it to favorites.

      // Assert: Check that it exists in favorites.
    });

    test('prevents duplicate favorites', () {
    });

    test('removes a destination from favorites', () {
      
    });

    test('returns an empty list when there are no favorites', () {
    
    });
  });
}