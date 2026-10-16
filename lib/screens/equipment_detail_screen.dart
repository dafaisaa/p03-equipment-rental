import 'package:flutter/material.dart';

import '../models/equipment.dart';
import 'rental_form_screen.dart';

class EquipmentDetailScreen extends StatelessWidget {
  final Equipment equipment;

  const EquipmentDetailScreen({
    super.key,
    required this.equipment,
  });

  @override
  Widget build(BuildContext context) {
    final isAvailable = equipment.status == EquipmentStatus.available;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Equipment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.inventory_2,
              size: 80,
            ),
            const SizedBox(height: 24),
            Text(
              equipment.name,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 12),
            Text(
              'Kategori: ${equipment.category}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Status: ${equipment.status.name}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: isAvailable
                    ? () async {
                        final result = await Navigator.push<bool>(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return RentalFormScreen(
                                equipment: equipment,
                              );
                            },
                          ),
                        );
                        if (result == true) {
                          if (!context.mounted) {
                            return;
                          }

                          Navigator.pop(context, true);
                        }
                      }
                    : null,
                child: const Text('Sewa Equipment'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
