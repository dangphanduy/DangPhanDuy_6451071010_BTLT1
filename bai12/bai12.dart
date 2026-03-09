import 'dart:io';

void main() {
  print('=== ĐẢO NGƯỢC THỨ TỰ TỪ TRONG CHUỖI ===');
  print('');
  
  stdout.write('Nhập chuỗi của bạn: ');
  String? input = stdin.readLineSync();
  
  // Kiểm tra input hợp lệ
  if (input == null || input.trim().isEmpty) {
    print('Không có dữ liệu đầu vào!');
    return;
  }
  
  String originalString = input.trim();
  
  // Đảo ngược thứ tự từ bằng hàm
  String reversedString = reverseWordsOrder(originalString);
  
  // Hiển thị kết quả
  print('');
  print('=== KẾT QUẢ ===');
  print('Chuỗi gốc: "$originalString"');
  print('Chuỗi đảo ngược: "$reversedString"');
  
  print('');
  print('MSSV: 6451071010');
}

/// Hàm đảo ngược thứ tự các từ trong chuỗi
String reverseWordsOrder(String input) {
  // Tách chuỗi thành danh sách các từ
  List<String> words = splitIntoWords(input);
  
  // Đảo ngược danh sách
  List<String> reversedWords = words.reversed.toList();
  
  // Ghép lại thành chuỗi với khoảng trắng
  return reversedWords.join(' ');
}

/// Hàm tách chuỗi thành danh sách các từ (loại bỏ khoảng trắng thừa)
List<String> splitIntoWords(String input) {
  // Tách theo khoảng trắng và loại bỏ các phần tử rỗng
  return input.split(RegExp(r'\s+'))
      .where((word) => word.isNotEmpty)
      .toList();
}

/// Hàm đảo ngược thứ tự từ với tùy chọn giữ nguyên định dạng khoảng trắng
String reverseWordsOrderPreserveSpacing(String input) {
  // Phiên bản nâng cao giữ nguyên khoảng trắng đầu/cuối
  String trimmed = input.trim();
  if (trimmed.isEmpty) return input;
  
  // Lấy khoảng trắng đầu và cuối
  String leadingSpaces = input.substring(0, input.indexOf(trimmed));
  String trailingSpaces = input.substring(input.lastIndexOf(trimmed) + trimmed.length);
  
  // Đảo ngược các từ ở giữa
  String reversed = reverseWordsOrder(trimmed);
  
  return leadingSpaces + reversed + trailingSpaces;
}
