void main() {
  print('=== LẤY PHẦN TỬ ĐẦU VÀ CUỐI DANH SÁCH ===');
  print('');
  
  // Danh sách mẫu như yêu cầu
  List<int> a = [5, 10, 15, 20, 25];
  
  print('Danh sách gốc: $a');
  List<int> firstAndLast = getFirstAndLast(a);
  print('Danh sách đầu và cuối: $firstAndLast');
  print('');
  
  print('');
  print('MSSV: 6451071010');
}

/// Hàm lấy phần tử đầu tiên và cuối cùng của danh sách
List<T> getFirstAndLast<T>(List<T> list) {
  if (list.isEmpty) {
    return <T>[]; // Trả về danh sách rỗng nếu input rỗng
  }
  
  if (list.length == 1) {
    return [list[0]]; // Nếu chỉ có 1 phần tử thì trả về chính nó
  }
  
  // Trả về danh sách gồm phần tử đầu và cuối
  return [list.first, list.last];
}