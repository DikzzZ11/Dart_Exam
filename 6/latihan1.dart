void main() {
  // Membuat list expenses
  List<Expense> expenses = [];

  // Menambah expenses
  expenses.add(Expense.quick(description: 'Coffee', amount: 4.50, category: 'Food'));
  expenses.add(Expense.quick(description: 'Lunch', amount: 12.75, category: 'Food'));
  expenses.add(Expense.quick(description: 'Gas', amount: 45.00, category: 'Transport'));

  // Mengakses expenses
  print('Expense pertama: ${expenses[0].description}');
  print('Total jumlah: ${expenses.length}');

  // Loop semua expenses
  print('\nSemua expenses:');
  for (var expense in expenses) {
    print(expense.getSummary());
  }

  // Menghapus expense
  expenses.removeAt(1);  // Hapus lunch
  print('\nSetelah hapus lunch: ${expenses.length} expenses');
}
