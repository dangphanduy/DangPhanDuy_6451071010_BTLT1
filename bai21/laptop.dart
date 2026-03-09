class Laptop {
  int id;
  String name;
  int ram; // RAM tính bằng GB
  
  // Constructor
  Laptop(this.id, this.name, this.ram);
  
  // Phương thức để hiển thị thông tin laptop
  void displayInfo() {
    print('ID: $id');
    print('Tên: $name');
    print('RAM: ${ram}GB');
    print('${'-' * 30}');
  }
  
  // Phương thức toString để in thông tin đối tượng
  @override
  String toString() {
    return 'Laptop{ID: $id, Tên: $name, RAM: ${ram}GB}';
  }
}