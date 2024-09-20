class Property {
  final String id;
  final String address;
  final int bedrooms;
  final int bathrooms;
  final double rent;
  final bool isOccupied;
  final List<String> photos;
  final String availabilityNotes;
  final DateTime createdAt;
  final DateTime updatedAt;

  Property({
    required this.id,
    required this.address,
    required this.bedrooms,
    required this.bathrooms,
    required this.rent,
    this.isOccupied = false,
    this.photos = const [],
    this.availabilityNotes = '',
    required this.createdAt,
    required this.updatedAt,
  });
}
