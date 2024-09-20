class LeaseAgreement {
  final String id;
  final String propertyId;
  final String tenantId;
  final String documentUrl;
  final DateTime createdAt;
  final DateTime updatedAt;

  LeaseAgreement({
    required this.id,
    required this.propertyId,
    required this.tenantId,
    required this.documentUrl,
    required this.createdAt,
    required this.updatedAt,
  });
}