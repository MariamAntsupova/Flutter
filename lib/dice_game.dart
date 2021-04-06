import 'dart:io';
import 'dart:math';

void main() {
  print("Welcome to Dice Game, \nType 'exit' to stop the game");
  final random = Random();

  int user = 0;
  int comp = 0;



  Random random2 = new Random();



  while (true) {
    String compChoice = (1 + random2.nextInt(6)+ 1 + random2.nextInt(6)).toString();
    stdout.write("\nPlease write 'roll' to play : ");
    String userChoice = stdin.readLineSync()!;

    if (userChoice == "exit") {
      print("\nYou: $user Computer: $comp");
      break;
    }
    else if (userChoice == "roll") {
      String userChoice = (1 + random2.nextInt(6)+ 1 + random2.nextInt(6)).toString();
      if (userChoice.contains("roll")) {
        print("Incorrect choice");
        continue;
      } else if (int.parse(compChoice) == int.parse(userChoice)) {
        print("We have a tie!");
      } else if (int.parse(compChoice) > int.parse(userChoice)){
        print("Computer wins: $compChoice vs $userChoice");
        comp += 1;
      } else if (int.parse(compChoice) < int.parse(userChoice)) {
        print("You win: $userChoice vs $compChoice");
        user += 1;
      }
    }
  }

}