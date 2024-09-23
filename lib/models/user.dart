class User {
  final String id;
  final String name;
  final String email;
  final String passwordHash;
  final UserRole role;
  final bool isFirstLogin;
  final DateTime createdAt;
  final DateTime updatedAt;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.passwordHash,
    required this.role,
    this.isFirstLogin = true,
    required this.createdAt,
    required this.updatedAt,
  });
}

enum UserRole { admin, renter, applicant }