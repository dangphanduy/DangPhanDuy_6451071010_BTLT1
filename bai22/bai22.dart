import 'house.dart'; // Import lớp House từ file riêng

void main() {
  // Tạo 3 đối tượng House bằng constructor
  House house1 = House(1, 'Villa Thảo Điền', 12500.0);
  House house2 = House(2, 'Căn hộ Vinhomes Central Park', 8200.0);
  House house3 = House(3, 'Nhà phố Quận 1', 25000.0);
  
  // Tạo danh sách (list) chứa các đối tượng House
  List<House> houses = [house1, house2, house3];
  
  // In thông tin chi tiết từng ngôi nhà
  print('=== THÔNG TIN CHI TIẾT CÁC NGÔI NHÀ ===');
  for (int i = 0; i < houses.length; i++) {
    print('Ngôi nhà ${i + 1}:');
    houses[i].displayInfo();
  }
  
  // In thông tin tất cả nhà bằng toString()
  print('=== DANH SÁCH TẤT CẢ NGÔI NHÀ ===');
  for (House house in houses) {
    print(house.toString());
  }

  print('');
  print('MSSV: 6451071010');
}