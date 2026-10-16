import 'package:flutter/material.dart';

import '../models/equipment.dart';

class EquipmentCard extends StatelessWidget {
  final Equipment equipment;
  final VoidCallback onTap;

  const EquipmentCard({
    super.key,
    required this.equipment,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        onTap: onTap,
        leading: const Icon(Icons.inventory_2),
        title: Text(equipment.name),
        subtitle: Text(
          '${equipment.category} • ${equipment.status.name}',
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
