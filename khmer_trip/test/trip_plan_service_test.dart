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
    });

    test('prevents duplicate destinations', () {
    });

    test('calculates daily cost correctly', () {
    });

    test('detects expenses exceeding daily budget', () {
    });

    test('rejects an invalid trip day', () {
    });

    test('removes destination and recalculates cost', () {
    });
  });
}