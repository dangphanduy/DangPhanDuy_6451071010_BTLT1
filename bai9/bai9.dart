import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Nhập một số nguyên dương: ');
  String? input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty) {
    print('Không có dữ liệu đầu vào!');
    return;
  }
  
  int? number = int.tryParse(input.trim());
  
  if (number == null) {
    print('Đó không phải là một số hợp lệ!');
    return;
  }
  
  if (number < 1) {
    print('Vui lòng nhập một số nguyên dương!');
    return;
  }
  
  // Kiểm tra và hiển thị kết quả
  bool isPrime = isPrimeNumber(number);
  
  print('');

  if (isPrime) {
    print('$number LÀ SỐ NGUYÊN TỐ');
  } else {
    print('$number KHÔNG PHẢI LÀ SỐ NGUYÊN TỐ');
  }

  print('');
  print('MSSV: 6451071010');
}

/// Hàm kiểm tra số nguyên tố
bool isPrimeNumber(int n) {
  // Số nhỏ hơn 2 không phải số nguyên tố
  if (n < 2) {
    return false;
  }
  
  // 2 là số nguyên tố duy nhất chẵn
  if (n == 2) {
    return true;
  }
  
  // Các số chẵn khác không phải số nguyên tố
  if (n % 2 == 0) {
    return false;
  }
  
  // Kiểm tra các ước số lẻ từ 3 đến sqrt(n)
  int limit = sqrt(n).toInt();
  for (int i = 3; i <= limit; i += 2) {
    if (n % i == 0) {
      return false;
    }
  }
  
  return true;
}