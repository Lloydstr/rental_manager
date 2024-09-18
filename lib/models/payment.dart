
class Payment {
  final String id;
  final String propertyId;
  final String tenantName;
  final double amount;
  final DateTime date;
  final PaymentStatus status;

  Payment({
    required this.id,
    required this.propertyId,
    required this.tenantName,
    required this.amount,
    required this.date,
    this.status = PaymentStatus.pending,
  });
}

enum PaymentStatus { pending, completed, overdue }
