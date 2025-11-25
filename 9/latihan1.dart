class CategoryManager {
  final List<String> _categories = ['Makanan', 'Transportasi', 'Tagihan'];

  void addCategory(String category) { ... }
  void removeCategory(String category) { ... }
  List<String> get allCategories => List.unmodifiable(_categories);
}
