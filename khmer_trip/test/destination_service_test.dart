import 'package:flutter_test/flutter_test.dart';
import 'package:khmer_trip/services/destination_service.dart';

void main() {
  group('DestinationService', () {
    late DestinationService service;

    setUp(() {
      service = DestinationService();
    });

    test('get all destinations', () {
      expect(service.getAllDestinations(), isNotEmpty);
    });

    test('search destination by name', () {
      final result = service.searchDestinations('Angkor');

      expect(result, isNotEmpty);
      expect(result.every((destination) => destination.name.toLowerCase().contains('angkor')), isTrue);
    });

    test('search destination without matching name', () {
      expect(service.searchDestinations('Unknown Place'), isEmpty);
    });

    test('filter destinations by category', () {
      final result = service.filterByCategory('Beaches');

      expect(result, isNotEmpty);
      expect(result.every((destination) => destination.categories.contains('Beaches')), isTrue);
    });
  });
}