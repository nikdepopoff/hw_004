import 'hw_004.dart';

void main() {
  Cat cat = Cat(Color.yellow, 3);
  cat.meow();
  print(cat.info());
  print('Cat is ${cat.age} years old');

  Dog dog = Dog(Color.darkGreen, 3, 'Sit');
  dog.bark();
  print(dog.info());

  FightingDog fightingDog = FightingDog(Color.red, 2, 'fight', 12);
  fightingDog.bark();
  fightingDog.fight();
  print(fightingDog.info());

  print('end of program');
  Animal.displayCounter();

  if (fightingDog.color == Color.red) {
    print('This dog is cute');
  }
}
