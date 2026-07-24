int totalCalls = 0;
void main() {
  for (int i = 0; i < 3; i++) {
    greet();
  }
  ;
  print('-----------------------');

  introduce('Denis', 24);
  introduce('Matt', 29);
  introduce('Alex', 25);

  print('-----------------------');

  int b = addNumbers(5, 8);
  print('Sum of 5 and 8 is $b');

  print('-----------------------');

  double result = calculateDiscount(price: 200);
  double result1 = calculateDiscount(price: 180, discount: 30);
  double result2 = calculateDiscount(price: 220, discount: 10, tax: 40);
  print('Final price: $result');
  print('Final price: $result1');
  print('Final price: $result2');

  print('Total function calls: $totalCalls');
}

void greet() {
  print('Hello! Welcome to Dart programing!');
  totalCalls++;
}

void introduce(String name, int age) {
  print('My name is $name and I am $age years old');
  totalCalls++;
}

int addNumbers(int a, int b) {
  totalCalls++;
  return a + b;
}

double calculateDiscount({
  required double price,
  double discount = 0,
  double tax = 0,
}) {
  totalCalls++;
  double finalPrice = price - (price * discount / 100) + (price * tax / 100);
  return finalPrice;
}
