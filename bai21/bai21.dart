import 'laptop.dart';
void main() {
  print('=== QUẢN LÝ THÔNG TIN LAPTOP ===');
  print('');
  
  // Tạo 3 đối tượng Laptop
  Laptop laptop1 = Laptop(1, 'Dell XPS 13', 16);
  Laptop laptop2 = Laptop(2, 'MacBook Pro M3', 32);
  Laptop laptop3 = Laptop(3, 'ASUS ROG Strix', 64);
  
  // Tạo danh sách các laptop
  List<Laptop> laptops = [laptop1, laptop2, laptop3];
  
  // In thông tin từng laptop bằng phương thức displayInfo()
  print('=== THÔNG TIN CHI TIẾT CÁC LAPTOP ===');
  for (int i = 0; i < laptops.length; i++) {
    print('Laptop ${i + 1}:');
    laptops[i].displayInfo();
  }
  
  // In thông tin tất cả laptop bằng toString()
  print('=== DANH SÁCH TẤT CẢ LAPTOP ===');
  for (Laptop laptop in laptops) {
    print(laptop.toString());
  }

  print('');
  print('MSSV: 6451071010');
}