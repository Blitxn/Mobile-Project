import '../models/destination.dart';
import '../data/destinationdata.dart';

class DestinationService {
  // Get all destinations
  List<Destination> getAllDestinations() {
    return destinations;
  }

  // Search by destination name
  List<Destination> searchDestinations(String query) {
    if (query.trim().isEmpty) {
        return List.unmodifiable(destinations);
}

    return destinations.where((destination) {
      return destination.name
          .toLowerCase()
          .contains(query.trim().toLowerCase());
    }).toList();
  }

  // Filter by category
  List<Destination> filterByCategory(String category) {
    return destinations.where((destination) {
      return destination.categories.contains(category);
    }).toList();
  }

  // Find destination by ID
  Destination? getDestinationById(String id) {
    for (var destination in destinations) {
      if (destination.id == id) {
        return destination;
      }
    }
    return null;
  }
}
