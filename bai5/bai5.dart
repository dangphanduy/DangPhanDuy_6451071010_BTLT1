void main() {
  // Danh sách mẫu
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  
  print('Danh sách a: $a');
  print('Danh sách b: $b');
  
  // Tìm các phần tử chung không trùng lặp
  List<int> commonElements = findCommonElements(a, b);
  
  print('Các phần tử chung (không trùng lặp): $commonElements');
  print('');
  print('MSSV: 6451071010');
}

/// Hàm tìm các phần tử chung giữa hai danh sách (không trùng lặp)
List<int> findCommonElements(List<int> list1, List<int> list2) {
  // Chuyển đổi danh sách thành Set để loại bỏ các phần tử trùng lặp
  Set<int> set1 = Set<int>.from(list1);
  Set<int> set2 = Set<int>.from(list2);
  
  // Tìm giao điểm của hai Set
  Set<int> intersection = set1.intersection(set2);
  
  // Chuyển đổi Set trở lại thành List và sắp xếp
  return intersection.toList()..sort();
}
