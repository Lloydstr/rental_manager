import 'package:flutter/material.dart';
import 'models/applicant.dart';

class ApplicantsPage extends StatelessWidget {
  const ApplicantsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data for applicants
    final List<Applicant> applicants = [
      Applicant(
        id: '1',
        name: 'John Doe',
        email: 'john@example.com',
        phone: '123-456-7890',
        creditScore: 720,
        income: 50000,
        propertyId: 'property1',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      // Add more applicants...
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            title: const Text('Applicants'),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  // TODO: Implement applicant search functionality
                },
              ),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final applicant = applicants[index];
                  return ApplicantCard(applicant: applicant);
                },
                childCount: applicants.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ApplicantCard extends StatelessWidget {
  final Applicant applicant;

  const ApplicantCard({super.key, required this.applicant});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  applicant.name,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Chip(
                  label: Text('Credit: ${applicant.creditScore}'),
                  backgroundColor: Colors.blue[100],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(applicant.email),
            Text(applicant.phone),
            const SizedBox(height: 8),
            Text(
              'Income: \$${applicant.income.toStringAsFixed(2)}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}