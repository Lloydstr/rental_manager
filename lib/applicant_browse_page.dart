import 'package:flutter/material.dart';
import 'models/property.dart';
import 'property_details_page.dart';
import 'applicant_form_page.dart';

class ApplicantBrowsePage extends StatelessWidget {
  const ApplicantBrowsePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Fetch actual properties from a data source
    final properties = [
      Property(
        id: '1',
        address: '123 Main St',
        bedrooms: 2,
        bathrooms: 1,
        rent: 1000,
        photos: ['https://example.com/property1.jpg'],
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      // Add more properties...
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Available Properties'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: properties.length,
        itemBuilder: (context, index) {
          final property = properties[index];
          return Card(
            margin: const EdgeInsets.all(8),
            elevation: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(property.photos.first, fit: BoxFit.cover, height: 200, width: double.infinity),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        property.address,
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text('${property.bedrooms} bed, ${property.bathrooms} bath'),
                      Text('\$${property.rent.toStringAsFixed(2)} / month', style: const TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PropertyDetailsPage(property: property),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                            child: const Text('View Details'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ApplicantFormPage(property: property), // Pass the property here
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                            child: const Text('Apply Now'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
