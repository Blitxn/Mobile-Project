class Destination {
  final String id;
  final String name;
  final String location;
  final String category;
  final String description;
  final List<String> images;
  final List<String> activities;
  final double dailyCost;

  Destination({
    required this.id,
    required this.name,
    required this.location,
    required this.category,
    required this.description,
    required this.images,
    required this.activities,
    required this.dailyCost,
  });
}