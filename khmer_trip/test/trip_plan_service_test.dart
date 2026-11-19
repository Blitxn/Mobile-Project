import 'package:flutter_test/flutter_test.dart';
import 'package:khmer_trip/models/destination.dart';
import 'package:khmer_trip/services/trip_plan_service.dart';

void main() {
  group('TripPlanService', () {
    late TripPlanService service;
    late List<Destination> destinations;

    setUp(() {
      service = TripPlanService();
      destinations = [
        Destination(
          id: '1',
          name: 'Bokor Mountain',
          location: 'Kampot',
          categories: ['Mountains'],
          description: 'Mountain destination.',
          images: [],
          activities: ['Hiking'],
          dailyCost: 25.0,
        ),
        Destination(
          id: '2',
          name: 'Koh Rong',
          location: 'Sihanoukville',
          categories: ['Islands'],
          description: 'Island destination.',
          images: [],
          activities: ['Swimming'],
          dailyCost: 40.0,
        ),
      ];
    });

    test('Calculate daily cost', () {
      expect(service.calculateDailyCost(destinations), 65.0);
    });

    test('Calculate total cost', () {
      expect(service.calculateTotalCost(destinations, 3), 195.0);
    });

    test('Calculate remaining budget', () {
      expect(service.calculateRemainingBudget(300.0, 195.0), 105.0);
    });

    test('Invalid trip duration', () {
      expect(
        () => service.calculateTotalCost(destinations, 0),
        throwsArgumentError,
      );
    });

    test('Empty destination list', () {
      expect(
        () => service.calculateTotalCost([], 3),
        throwsArgumentError,
      );
    });
  });
}