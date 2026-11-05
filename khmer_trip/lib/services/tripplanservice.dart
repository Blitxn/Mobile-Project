import '../models/destination.dart';

class TripPlanService {
   double calculateDailyCost(List<Destination> destinations,) {
    double totalCost = 0;
    for (var destination in destinations) {
      totalCost += destination.dailyCost;
    }
    return totalCost;
  }
  double calculateTotalCost(List<Destination> destinations,int duration,) {
    if (duration < 1) {
      throw ArgumentError('Trip duration must be at least 1 day.');
    }
    double dailyCost = calculateDailyCost(destinations);
    return dailyCost * duration;
  }
   double calculateRemainingBudget(double budget, double totalCost) {
    return budget - totalCost;
  }
    bool exceedsBudget(double totalCost, double budget) {
    return totalCost > budget;
  }
}


 

