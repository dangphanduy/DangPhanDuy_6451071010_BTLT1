import 'dart:io';
import 'dart:math';

void main() {
  print('=== TRÒ CHƠI ĐOÁN SỐ ===');
  print('Tôi đã nghĩ ra một số từ 1 đến 100.');
  print('Hãy thử đoán số đó!');
  print('');
  
  // Tạo số ngẫu nhiên từ 1 đến 100
  Random random = Random();
  int secretNumber = random.nextInt(100) + 1;
  
  int attempts = 0;
  bool hasWon = false;
  
  while (!hasWon) {
    stdout.write('Nhập số đoán của bạn (1-100): ');
    String? input = stdin.readLineSync();
    
    // Kiểm tra input hợp lệ
    if (input == null || input.trim().isEmpty) {
      print('Vui lòng nhập một số hợp lệ!');
      continue;
    }
    
    int? guess = int.tryParse(input.trim());
    
    if (guess == null) {
      print('Đó không phải là một số hợp lệ! Vui lòng thử lại.');
      continue;
    }
    
    if (guess < 1 || guess > 100) {
      print('Số phải nằm trong khoảng từ 1 đến 100! Vui lòng thử lại.');
      continue;
    }
    
    attempts++;
    
    if (guess < secretNumber) {
      print('Quá thấp! Hãy thử một số lớn hơn.');
    } else if (guess > secretNumber) {
      print('Quá cao! Hãy thử một số nhỏ hơn.');
    } else {
      print('🎉 CHÍNH XÁC! Bạn đã đoán đúng!');
      hasWon = true;
    }
    
    print(''); // Dòng trống cho dễ đọc
  }
  
  // In thông tin kết thúc trò chơi
  print('=== KẾT QUẢ TRÒ CHƠI ===');
  print('Số bí mật: $secretNumber');
  print('Số lần đoán: $attempts');
  
  print('Cảm ơn bạn đã chơi!');
  print('');
  print('MSSV: 6451071010');
}
