import 'animal.dart'; // Import lớp Animal

// Lớp Cat kế thừa từ Animal
class Cat extends Animal {
  String sound; // Thuộc tính mới: tiếng kêu của mèo
  
  // Constructor của Cat, sử dụng super để gọi constructor của Animal
  Cat(int id, String name, String color, this.sound) 
      : super(id, name, color);
  
  // Override phương thức displayInfo để hiển thị thêm thông tin sound
  @override
  void displayInfo() {
    super.displayInfo(); // Gọi phương thức của lớp cha
    print('Tiếng kêu: $sound');
  }
  
  // Override phương thức toString
  @override
  String toString() {
    return 'Cat{ID: $id, Tên: $name, Màu: $color, Tiếng kêu: $sound}';
  }
  
  // Phương thức riêng của Cat - kêu
  void makeSound() {
    print('$name kêu: $sound');
  }
  
}