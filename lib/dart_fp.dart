import 'package:fpdart/fpdart.dart';

class Test {
  Future<Either<String, int>> divide(int x, int y) {
    if (y == 0) {
      return Future.value(Left('Cannot divide by zero'));
    } else {
      return Future.value(Right(x ~/ y));
    }
  }
}

class reciver {
  void test() async {
    final result = await Test().divide(10, 0);
    result.fold(
      (error) => print(error),
      (success) => print('$success'),
    );
  }
}

void main() {
  reciver().test();
}
