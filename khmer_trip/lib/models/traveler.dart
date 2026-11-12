
import 'destination.dart';
import 'tripplan.dart';

class Traveler {
  final String id;
  final String name;
  final List<Destination> favorites;
  final List<TripPlan> tripPlans;

  Traveler({
    required this.id,
    required this.name,
    List<Destination>? favorites,
    List<TripPlan>? tripPlans,
  })  : favorites = favorites ?? [],
        tripPlans = tripPlans ?? [];

  void addFavorite(Destination destination) {
    if (!favorites.any((item) => item.id == destination.id)) {
      favorites.add(destination);
    }
  }

  void removeFavorite(String destinationId) {
    favorites.removeWhere(
      (destination) => destination.id == destinationId,
    );
  }

  void addTripPlan(TripPlan tripPlan) {
    if (!tripPlans.any((plan) => plan.id == tripPlan.id)) {
      tripPlans.add(tripPlan);
    }
  }
}

