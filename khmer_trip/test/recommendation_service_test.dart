import 'package:flutter_test/flutter_test.dart';
import 'package:khmer_trip/models/destination.dart';
import 'package:khmer_trip/services/recommendation.dart';

void main() {
  group('RecommendationService', () {
    late RecommendationService service;

    setUp(() {
      service = RecommendationService();
    });

    test('returns destinations matching interests', () {
    });

    test('ranks destinations by matching score', () {
    });

    test('returns empty list when no destinations match', () {
    });

    test('handles empty interests', () {
    });
  });
}