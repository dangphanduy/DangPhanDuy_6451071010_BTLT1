import 'cat.dart';    // Import lớp Cat

void main() {
  print('=== DEMO KẾ THỪA TRONG DART ===');
  print('Lớp Cat kế thừa từ lớp Animal');
  print('');
  
  // Tạo đối tượng Cat
  Cat myCat = Cat(1, 'Kitty', 'Trắng đen', 'Meow meow');
  
  // In toàn bộ thông tin của Cat
  print('=== THÔNG TIN CHI TIẾT CON MÈO ===');
  myCat.displayInfo();
  print('${'-' * 40}');
  
  myCat.describe();
  myCat.makeSound();
  print('');
  print('MSSV: 6451071010');
}