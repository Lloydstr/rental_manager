import 'package:flutter/material.dart';
import 'properties_page.dart';
import 'applicants_page.dart';
import 'payments_page.dart';
import 'applicant_form_page.dart'; // Ensure this import is correct
import 'models/property.dart'; // Import the Property model

class AdminDashboardPage extends StatelessWidget {
  const AdminDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Admin Dashboard')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildDashboardItem(context, 'Manage Properties', Icons.home, () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const PropertiesPage()));
          }),
          _buildDashboardItem(context, 'View Applicants', Icons.person, () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ApplicantsPage()));
          }),
          _buildDashboardItem(context, 'Manage Payments', Icons.payment, () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentsPage()));
          }),
          _buildDashboardItem(context, 'Messages', Icons.message, () {
            // TODO: Implement messages page
          }),
          _buildDashboardItem(context, 'Applicant Form', Icons.person_add, () {
            // Create a dummy Property object or fetch it from your data source
            Property dummyProperty = Property(
              id: '1',
              address: '123 Main St',
              bedrooms: 2,
              bathrooms: 1,
              rent: 1000,
              photos: ['https://example.com/property1.jpg'],
              createdAt: DateTime.now(),
              updatedAt: DateTime.now(),
            );

            Navigator.push(context, MaterialPageRoute(builder: (context) => ApplicantFormPage(property: dummyProperty))); // Pass the property here
          }),
        ],
      ),
    );
  }

  Widget _buildDashboardItem(BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48),
            const SizedBox(height: 8),
            Text(title, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
