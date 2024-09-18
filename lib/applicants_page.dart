import 'package:flutter/material.dart';
import 'models/applicant.dart';

class ApplicantsPage extends StatefulWidget {
  const ApplicantsPage({super.key});

  @override
  _ApplicantsPageState createState() => _ApplicantsPageState();
}

class _ApplicantsPageState extends State<ApplicantsPage> {
  final List<Applicant> _applicants = [
    Applicant(id: '1', name: 'John Doe', email: 'john@example.com', phone: '123-456-7890', creditScore: 720, income: 50000),
    Applicant(id: '2', name: 'Jane Smith', email: 'jane@example.com', phone: '987-654-3210', creditScore: 680, income: 45000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Applicants')),
      body: ListView.builder(
        itemCount: _applicants.length,
        itemBuilder: (context, index) {
          final applicant = _applicants[index];
          return ListTile(
            title: Text(applicant.name),
            subtitle: Text(applicant.email),
            trailing: Text('Credit Score: ${applicant.creditScore}'),
            onTap: () {
              // TODO: Implement applicant details page
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement add applicant functionality
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
