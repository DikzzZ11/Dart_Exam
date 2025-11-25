class TravelExpense extends Expense {
  String destination;
  int tripDuration;

  TravelExpense({
    required String description,
    required double amount,
    required this.destination,
    required this.tripDuration,
    DateTime? date,
  }) : super(
    description: description,
    amount: amount,
    category: 'Perjalanan',
    date: date ?? DateTime.now(),
  );

  double getDailyCost() {
    if (tripDuration == 0) return amount;
    return amount / tripDuration;
  }

  bool isInternational() {
    // Cek sederhana - bisa diperbaiki dengan list negara
    return destination.contains('Jepang') ||
           destination.contains('Singapura') ||
           destination.contains('Malaysia') ||
           destination.contains('Korea');
  }

  @override
  void printDetails() {
    print('✈️ PENGELUARAN PERJALANAN');
    super.printDetails();
    print('   Destinasi: $destination');
    print('   Durasi: $tripDuration hari');
    print('   Biaya harian: Rp ${getDailyCost().toStringAsFixed(2)}');
    print('   Internasional: ${isInternational() ? "Ya 🌍" : "Tidak 🏠"}');
  }
}

void main() {
  var trip = TravelExpense(
    description: 'Liburan Tokyo',
    amount: 25000000.0,
    destination: 'Tokyo, Jepang',
    tripDuration: 7,
  );

  trip.printDetails();
}
