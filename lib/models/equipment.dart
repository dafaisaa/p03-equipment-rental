enum EquipmentStatus {
  available,
  rented,
  maintenance,
}

class Equipment {
  final String id;
  final String name;
  final String category;
  final EquipmentStatus status;

  const Equipment({
    required this.id,
    required this.name,
    required this.category,
    this.status = EquipmentStatus.available,
  });

  Equipment copyWith({
    String? name,
    String? category,
    EquipmentStatus? status,
  }) {
    return Equipment(
      id: id,
      name: name ?? this.name,
      category: category ?? this.category,
      status: status ?? this.status,
    );
  }
}

const mockEquipment = [
  Equipment(
    id: 'e1',
    name: 'Kamera DSLR',
    category: 'Fotografi',
  ),
  Equipment(
    id: 'e2',
    name: 'Tripod',
    category: 'Fotografi',
  ),
  Equipment(
    id: 'e3',
    name: 'Proyektor',
    category: 'Presentasi',
  ),
  Equipment(
    id: 'e4',
    name: 'Laptop',
    category: 'Komputer',
  ),
];