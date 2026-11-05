import 'destination.dart';
class TripPlan {
  final List<Destination> destinations;
  final int duration;
  final double budget;

  TripPlan({
    required this.destinations,
    required this.duration,
    required this.budget,
  });
}