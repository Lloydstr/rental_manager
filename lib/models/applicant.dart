class Applicant {
  final String id;
  final String name;
  final String email;
  final String phone;
  final double creditScore;
  final double income;
  final String propertyId;
  final ApplicationStatus applicationStatus;
  final DateTime createdAt;
  final DateTime updatedAt;

  Applicant({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.creditScore,
    required this.income,
    required this.propertyId,
    this.applicationStatus = ApplicationStatus.pending,
    required this.createdAt,
    required this.updatedAt,
  });
}

enum ApplicationStatus { pending, approved, rejected }
