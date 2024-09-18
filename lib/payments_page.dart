import 'package:flutter/material.dart';
import 'models/payment.dart';

class PaymentsPage extends StatefulWidget {
  const PaymentsPage({super.key});

  @override
  _PaymentsPageState createState() => _PaymentsPageState();
}

class _PaymentsPageState extends State<PaymentsPage> {
  final List<Payment> _payments = [
    Payment(id: '1', propertyId: '1', tenantName: 'John Doe', amount: 1000, date: DateTime.now()),
    Payment(id: '2', propertyId: '2', tenantName: 'Jane Smith', amount: 1500, date: DateTime.now().subtract(const Duration(days: 7))),
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
            title: Text(payment.tenantName),
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
