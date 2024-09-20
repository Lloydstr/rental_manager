class User {
  final String id;
  final String name;
  final String email;
  final String passwordHash;
  final UserRole role;
  final DateTime createdAt;
  final DateTime updatedAt;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.passwordHash,
    required this.role,
    required this.createdAt,
    required this.updatedAt,
  });
}

enum UserRole { admin, renter, applicant }