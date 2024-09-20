import 'package:flutter/material.dart';
import 'models/payment.dart';

class PaymentsPage extends StatefulWidget {
  const PaymentsPage({super.key});

  @override
  State<PaymentsPage> createState() => _PaymentsPageState();
}

class _PaymentsPageState extends State<PaymentsPage> {
  final List<Payment> _payments = [
    Payment(
      id: '1',
      propertyId: '1',
      tenantId: 'tenant1',
      amount: 1000,
      date: DateTime.now(),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Payment(
      id: '2',
      propertyId: '2',
      tenantId: 'tenant2',
      amount: 1500,
      date: DateTime.now().subtract(const Duration(days: 7)),
      createdAt: DateTime.now().subtract(const Duration(days: 7)),
      updatedAt: DateTime.now().subtract(const Duration(days: 7)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Payments')),
      body: ListView.builder(
        itemCount: _payments.length,
        itemBuilder: (context, index) {
          final payment = _payments[index];
          return ListTile(
            title: Text('Tenant ID: ${payment.tenantId}'),
            subtitle: Text('Property ID: ${payment.propertyId}'),
            trailing: Text('\$${payment.amount.toStringAsFixed(2)}'),
            onTap: () {
              // TODO: Implement payment details page
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement add payment functionality
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
