import 'package:flutter/material.dart';
import 'models/property.dart';

class PropertiesPage extends StatefulWidget {
  const PropertiesPage({super.key});

  @override
  _PropertiesPageState createState() => _PropertiesPageState();
}

class _PropertiesPageState extends State<PropertiesPage> {
  final List<Property> _properties = [
    Property(id: '1', address: '123 Main St', bedrooms: 2, bathrooms: 1, rent: 1000),
    Property(id: '2', address: '456 Elm St', bedrooms: 3, bathrooms: 2, rent: 1500),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Properties')),
      body: ListView.builder(
        itemCount: _properties.length,
        itemBuilder: (context, index) {
          final property = _properties[index];
          return ListTile(
            title: Text(property.address),
            subtitle: Text('${property.bedrooms} bed, ${property.bathrooms} bath'),
            trailing: Text('\$${property.rent.toStringAsFixed(2)}'),
            onTap: () {
              // TODO: Implement property details page
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement add property functionality
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
