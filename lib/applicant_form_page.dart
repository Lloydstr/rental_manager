import 'package:flutter/material.dart';
import 'models/property.dart'; // Ensure you import the Property model

class ApplicantFormPage extends StatelessWidget {
  final Property property; // Add this line to define the property parameter

  const ApplicantFormPage({super.key, required this.property}); // Update constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Applicant Form'),
      ),
      body: Center(
        child: Text('Applying for: ${property.address}'), // Example usage of property
      ),
    );
  }
}
