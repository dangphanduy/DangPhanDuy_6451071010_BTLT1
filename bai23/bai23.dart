import 'Gender.dart';
void main() {
  
  // In tất cả các giá trị của enum Gender
  print('=== TẤT CẢ GIÁ TRỊ ENUM GENDER ===');
  print('Số lượng giá trị: ${Gender.values.length}');
  print('');

  for (Gender gender in Gender.values) {
    print('- ${gender.name}');
  }
  print('');
  print('MSSV: 6451071010');
}