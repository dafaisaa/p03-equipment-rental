import 'package:flutter/material.dart';

import '../models/equipment.dart';
import '../widgets/equipment_card.dart';
import 'equipment_detail_screen.dart';

class EquipmentListScreen extends StatefulWidget {
  const EquipmentListScreen({super.key});

  @override
  State<EquipmentListScreen> createState() {
    return _EquipmentListScreenState();
  }
}

class _EquipmentListScreenState extends State<EquipmentListScreen> {
  late List<Equipment> equipmentList;

  @override
  void initState() {
    super.initState();
    equipmentList = List.from(mockEquipment);
  }

  void rentEquipment(String equipmentId) {
    setState(() {
      equipmentList = equipmentList.map((equipment) {
        if (equipment.id == equipmentId) {
          return equipment.copyWith(
            status: EquipmentStatus.rented,
          );
        }

        return equipment;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Equipment Rental'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: equipmentList.length,
        itemBuilder: (context, index) {
          final equipment = equipmentList[index];

          return EquipmentCard(
            equipment: equipment,
            onTap: () async {
              final result = await Navigator.push<bool>(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return EquipmentDetailScreen(
                      equipment: equipment,
                    );
                  },
                ),
              );

              if (result == true && mounted) {
                rentEquipment(equipment.id);
              }
            },
          );
        },
      ),
    );
  }
}
