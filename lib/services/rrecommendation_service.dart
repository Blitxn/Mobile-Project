import '../models/destination.dart';

class RecommendationService {

  List<Destination> recommend(
    List<Destination> destinations,
    List<String> interests,
  ) {
    if (interests.isEmpty) {
      return [];
    }

    Map<Destination, int> scores = {};

    for (var destination in destinations) {
      int score = 0;
      for (var interest in interests) {
        if (destination.categories.contains(interest)) {
          score++;
        }
      }
      if (score > 0) {
        scores[destination] = score;
      }
    }
    var results = scores.keys.toList();

    results.sort(
      (a, b) => scores[b]!.compareTo(scores[a]!),
    );

    return results;
  }
}