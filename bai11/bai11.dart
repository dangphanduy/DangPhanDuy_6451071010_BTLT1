import 'dart:io';

void main() {
  print('=== TẠO DÃY SỐ FIBONACCI ===');
  print('Quy tắc: Mỗi số bằng tổng của hai số trước đó');
  print('');
  
  // Hỏi người dùng số lượng số Fibonacci cần tạo
  stdout.write('Nhập số lượng số Fibonacci bạn muốn tạo: ');
  String? input = stdin.readLineSync();
  
  // Kiểm tra input hợp lệ
  if (input == null || input.trim().isEmpty) {
    print('Không có dữ liệu đầu vào!');
    return;
  }
  
  int? count = int.tryParse(input.trim());
  
  if (count == null) {
    print('Đó không phải là một số hợp lệ!');
    return;
  }
  
  if (count < 0) {
    print('Số lượng phải là một số nguyên không âm!');
    return;
  }
  
  // Tạo và hiển thị dãy Fibonacci
  List<int> fibonacciSequence = generateFibonacci(count);
  
  print('');
  
  if (count == 0) {
    print('Dãy Fibonacci: []');
  } else {
    print('Dãy Fibonacci: $fibonacciSequence');
  }
  print('');
  print('MSSV: 6451071010');
}

/// Hàm tạo dãy số Fibonacci với số lượng đã chỉ định
List<int> generateFibonacci(int count) {
  if (count <= 0) {
    return <int>[]; // Trả về danh sách rỗng nếu count <= 0
  }
  
  if (count == 1) {
    return [0]; // Chỉ có F(0) = 0
  }
  
  if (count == 2) {
    return [0, 1]; // F(0) = 0, F(1) = 1
  }
  
  // Tạo danh sách với 2 số đầu tiên
  List<int> fibonacci = [0, 1];
  
  // Tính toán các số tiếp theo
  for (int i = 2; i < count; i++) {
    int nextNumber = fibonacci[i - 1] + fibonacci[i - 2];
    fibonacci.add(nextNumber);
  }
  
  return fibonacci;
}

/// Hàm tính số Fibonacci thứ n (alternative implementation)
int fibonacciAt(int n) {
  if (n <= 0) return 0;
  if (n == 1) return 1;
  
  int prev = 0;
  int current = 1;
  
  for (int i = 2; i <= n; i++) {
    int temp = prev + current;
    prev = current;
    current = temp;
  }
  
  return current;
}
