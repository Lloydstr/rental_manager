class Property {
  final String id;
  final String address;
  final int bedrooms;
  final int bathrooms;
  final double rent;
  final bool isOccupied;

  Property({
    required this.id,
    required this.address,
    required this.bedrooms,
    required this.bathrooms,
    required this.rent,
    this.isOccupied = false,
  });
}
