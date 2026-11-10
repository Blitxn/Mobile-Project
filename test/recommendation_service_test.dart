
import 'package:flutter_test/flutter_test.dart';
import 'package:khmer_trip/models/destination.dart';
import 'package:khmer_trip/services/recommendation_service.dart';

void main() {
  late RecommendationService recommendationService;
  late List<Destination> testDestinations;

  setUp(() {
    recommendationService = RecommendationService();

    testDestinations = [
      Destination(
        id: '1',
        name: 'Bokor Mountain',
        location: 'Kampot',
        categories: ['Mountains', 'Forests'],
        description: 'Mountain destination.',
        images: [],
        activities: ['Hiking'],
        dailyCost: 25.0,
      ),
      Destination(
        id: '2',
        name: 'Koh Rong',
        location: 'Preah Sihanouk',
        categories: ['Islands', 'Beaches'],
        description: 'Island destination.',
        images: [],
        activities: ['Swimming'],
        dailyCost: 40.0,
      ),
      Destination(
        id: '3',
        name: 'Angkor Wat',
        location: 'Siem Reap',
        categories: ['Temples'],
        description: 'Historical temple.',
        images: [],
        activities: ['Sightseeing'],
        dailyCost: 45.0,
      ),
    ];
  });

  test('Return empty list when no interests selected', () {
    final result = recommendationService.recommend(
      testDestinations,
      [],
    );

    expect(result, isEmpty);
  });

  test('Recommend destinations matching interests', () {
    final result = recommendationService.recommend(
      testDestinations,
      ['Mountains'],
    );

    expect(result.length, 1);
    expect(result.first.name, 'Bokor Mountain');
  });

  test('Rank destinations by matching score', () {
    final result = recommendationService.recommend(
      testDestinations,
      ['Mountains', 'Forests', 'Islands'],
    );

    expect(result.first.name, 'Bokor Mountain');
    expect(result.last.name, 'Koh Rong');
  });

  test('Exclude destinations without matching interests', () {
    final result = recommendationService.recommend(
      testDestinations,
      ['Mountains'],
    );

    expect(
      result.any((destination) => destination.name == 'Angkor Wat'),
      false,
    );
  });

  test('Return empty list when no destinations match', () {
    final result = recommendationService.recommend(
      testDestinations,
      ['Unknown'],
    );

    expect(result, isEmpty);
  });
}
