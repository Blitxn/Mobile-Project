
import 'package:flutter_test/flutter_test.dart';
import 'package:khmer_trip/services/destination_service.dart';

void main() {
  late DestinationService destinationService;

  setUp(() {
    destinationService = DestinationService();
  });

  test('Get all destinations', () {
    final result = destinationService.getAllDestinations();

    expect(result, isNotEmpty);
  });

  test('Search destination by name', () {
    final result = destinationService.searchDestinations('Bokor');

    expect(result, isNotEmpty);
    expect(result.first.name, 'Bokor Mountain');
  });

  test('Search destination without matching name', () {
    final result = destinationService.searchDestinations('Unknown Place');

    expect(result, isEmpty);
  });

  test('Filter destinations by category', () {
    final result = destinationService.filterByCategory('Mountains');

    expect(result, isNotEmpty);

    for (var destination in result) {
      expect(destination.categories, contains('Mountains'));
    }
  });

  test('Find destination by ID', () {
    final result = destinationService.getDestinationById('1');

    expect(result, isNotNull);
    expect(result!.name, 'Bokor Mountain');
  });

  test('Return null for unknown destination ID', () {
    final result = destinationService.getDestinationById('999');

    expect(result, isNull);
  });
}
