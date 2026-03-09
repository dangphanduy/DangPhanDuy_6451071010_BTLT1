import 'dart:io';

void main() {
	stdout.write('Nhập một số nguyên không âm: ');
	final raw = stdin.readLineSync();

	if (raw == null || raw.trim().isEmpty) {
		stdout.writeln('Không có đầu vào nào được cung cấp.');
		return;
	}

	final number = int.tryParse(raw.trim());
	if (number == null) {
		stdout.writeln('Đầu vào không phải là một số nguyên hợp lệ.');
		return;
	}

	if (number == 0) {
		stdout.writeln('Số 0 không có ước số nào khác ngoài chính nó.');
		return;
	}

	final target = number.abs();
	final divisors = <int>[];

	for (var i = 1; i <= target; i++) {
		if (target % i == 0) {
			divisors.add(i);
		}
	}

	stdout.writeln('Các ước của $number là: ${divisors.join(', ')}');
  print('');
  print('MSSV: 6451071010');
}
