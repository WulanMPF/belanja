class Item {
  final String name;
  final double price;
  final String imagePath; // Path gambar produk
  final int stock; // Jumlah stok produk
  final double rating; // Rating produk
  final String description; // Deskripsi produk

  Item({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.stock,
    required this.rating,
    required this.description,
  });
}
