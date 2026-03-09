import 'dart:io';
void main() {
  print('Hãy nhập vào một số nguyên:');
  int? number = int.tryParse(stdin.readLineSync()!);
  if (number !% 2 == 0)
  {
    print('Số $number là số chẵn.');
  }
  else
  {
    print('Số $number là số lẻ.');
  }
  print('');
  print('MSSV: 6451071010');
}
