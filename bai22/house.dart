// Lớp House với các thuộc tính id, name, price
class House {
  int id;
  String name;
  double price; // Giá nhà tính bằng triệu VND
  
  // Constructor
  House(this.id, this.name, this.price);
  
  // Phương thức hiển thị thông tin chi tiết
  void displayInfo() {
    print('ID: $id');
    print('Tên: $name');
    print('Giá: ${price.toStringAsFixed(1)} triệu VND');
    print('${'-' * 35}');
  }
  
  // Phương thức toString
  @override
  String toString() {
    return 'House{ID: $id, Tên: $name, Giá: ${price.toStringAsFixed(1)} triệu VND}';
  }
  
  // Phương thức lấy giá định dạng
  String getFormattedPrice() {
    if (price >= 1000) {
      return '${(price / 1000).toStringAsFixed(1)} tỷ VND';
    }
    return '${price.toStringAsFixed(1)} triệu VND';
  }
}