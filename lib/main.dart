import 'package:flutter/material.dart';

import 'screens/equipment_list_screen.dart';

void main() {
  runApp(const EquipmentRentalApp());
}

class EquipmentRentalApp extends StatelessWidget {
  const EquipmentRentalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Equipment Rental',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
        ),
        useMaterial3: true,
      ),
      home: const EquipmentListScreen(),
    );
  }
}