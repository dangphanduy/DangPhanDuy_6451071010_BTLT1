import 'dart:io';

void main() {
  print('Vui lòng nhập tên của bạn:');
  String? name = stdin.readLineSync();
  print('Vui lòng nhập tuổi của bạn:');
  int? ageInput = int.tryParse(stdin.readLineSync()!);
  if (name != null && ageInput != null) {
    int ageOutput = 100 - ageInput;
    print ('Xin chào, $name! Bạn còn $ageOutput năm nữa để tròn 100 tuổi.');
  }

  print('');
  print('MSSV: 6451071010');
}
