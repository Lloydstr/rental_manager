import 'package:flutter/material.dart';
import 'models/payment.dart';

class PaymentsPage extends StatelessWidget {
  const PaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data for payments
    final List<Payment> payments = [
      Payment(
        id: '1',
        propertyId: '1',
        tenantId: '1',
        amount: 1000,
        date: DateTime.now(),
        status: PaymentStatus.completed,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      // Add more payments...
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            title: const Text('Payments'),
            actions: [
              IconButton(
                icon: const Icon(Icons.filter_list),
                onPressed: () {
                  // TODO: Implement payment filter functionality
                },
              ),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final payment = payments[index];
                  return PaymentCard(payment: payment);
                },
                childCount: payments.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PaymentCard extends StatelessWidget {
  final Payment payment;

  const PaymentCard({super.key, required this.payment});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(
          backgroundColor: payment.status == PaymentStatus.completed ? Colors.green : Colors.orange,
          child: Icon(
            payment.status == PaymentStatus.completed ? Icons.check : Icons.pending,
            color: Colors.white,
          ),
        ),
        title: Text(
          '\$${payment.amount.toStringAsFixed(2)}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          'Date: ${payment.date.toString().split(' ')[0]}',
          style: TextStyle(color: Colors.grey[600]),
        ),
        trailing: Text(
          payment.status.toString().split('.').last,
          style: TextStyle(
            color: payment.status == PaymentStatus.completed ? Colors.green : Colors.orange,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}