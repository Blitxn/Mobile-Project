import 'package:flutter_test/flutter_test.dart';
import 'package:khmer_trip/models/destination.dart';
import 'package:khmer_trip/models/tripplan.dart';
import 'package:khmer_trip/services/tripplanservice.dart';

void main() {
  group('TripPlanService', () {
    late TripPlanService service;

    setUp(() {
      service = TripPlanService();
    });

    test('adds destination to trip', () {
      // TODO: Create a trip and destination.
      // TODO: Add the destination.
      // TODO: Verify it was added.
    });

    test('prevents duplicate destinations', () {
      // TODO: Add a destination twice.
      // TODO: Verify duplicates are prevented.
    });

    test('calculates daily cost correctly', () {
      // TODO: Add two destinations to the same day.
      // TODO: Calculate daily cost.
      // TODO: Verify the total is correct.
    });

    test('detects expenses exceeding daily budget', () {
      // TODO: Create a trip where daily expenses exceed budget.
      // TODO: Check the budget.
      // TODO: Verify an over-budget result.
    });

    test('rejects an invalid trip day', () {
      // TODO: Try adding a destination beyond trip duration.
      // TODO: Verify the operation is rejected.
    });

    test('removes destination and recalculates cost', () {
      // TODO: Add two destinations.
      // TODO: Remove one destination.
      // TODO: Verify the updated daily cost.
    });
  });
}