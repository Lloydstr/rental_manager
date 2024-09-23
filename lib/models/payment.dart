class Payment {
  final String id;
  final String propertyId;
  final String tenantId;
  final double amount;
  final DateTime date;
  final PaymentStatus status;
  final DateTime createdAt;
  final DateTime updatedAt;

  Payment({
    required this.id,
    required this.propertyId,
    required this.tenantId,
    required this.amount,
    required this.date,
    this.status = PaymentStatus.pending,
    required this.createdAt,
    required this.updatedAt,
  });
}

enum PaymentStatus { pending, completed, overdue }