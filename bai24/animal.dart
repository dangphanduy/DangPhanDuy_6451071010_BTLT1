// Lớp cơ sở Animal với các thuộc tính cơ bản
class Animal {
  int id;
  String name;
  String color;
  
  // Constructor
  Animal(this.id, this.name, this.color);
  
  // Phương thức hiển thị thông tin cơ bản
  void displayInfo() {
    print('ID: $id');
    print('Tên: $name');
    print('Màu sắc: $color');
  }
  
  // Phương thức toString
  @override
  String toString() {
    return 'Animal{ID: $id, Tên: $name, Màu: $color}';
  }
  
  // Phương thức mô tả động vật
  void describe() {
    print('Đây là một con vật có tên $name với màu $color.');
  }
}