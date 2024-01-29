import 'dart:io';
import 'dart:math';

int com = 0;
int use = 0;

void main() {
  mainDisplay();
  for (int i = 0; i < 3; i++) {
    rock();
  }
  lastDisplay();
}

void rock() {
  List<String> choices = ['rock', 'paper', 'scissors'];

  Random random = Random();

  int randomIndex = random.nextInt(choices.length);

  String randomChoice = choices[randomIndex];
  print("\nEnter your choice:\nRock\nPaper\nScissors");
  String userChoice = stdin.readLineSync()!.toLowerCase();

  if (randomChoice == userChoice) {
    print("\nYour choice is $userChoice!".toUpperCase());
    print("Computer's choice is $randomChoice".toUpperCase());
    use++;
  } else {
    print("\nYour choice is $userChoice!".toUpperCase());
    print("Computer's choice was $randomChoice".toUpperCase());
    com++;
  }
  print("\n Now the score is\n$use:$com");
}

mainDisplay() {
  print("\n\nWelcome to Rock-Paper-Scissors!");
  print("\n\n\n\nPress any key to continue.....!");
  String any = stdin.readLineSync()!;
}

lastDisplay() {
  print("\n\n\n\n");
  if (com < use) {
    print("congratulations you won the match");
  } else {
    print(" Better luck next time!\n\n");
  }
  print("  \n   your game is over");
}
