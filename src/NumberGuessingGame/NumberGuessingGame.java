import java.util.Scanner;
import java.util.Random;

class Main {
  public static void main(String[] args) {
    Random random = new Random();
    int randNum = random.nextInt(1000);
    int guess = 0;
    int attempts = 0;
    Scanner scanner = new Scanner(System.in);
    System.out.println("Welcome to the guessing game! Guess a number between 1 and 1000:");
    guess = scanner.nextInt();
    while (guess != randNum) {
      if (randNum < guess) {
        System.out.println("You guessed " + guess + ". That is too high, try again:");
        guess = scanner.nextInt();
      } else if (randNum > guess) {
        System.out.println("You guessed " + guess + ". That is too low, try again:");
        guess = scanner.nextInt();
      }
      attempts++;
    }
    System.out.println("You guessed " + guess + ". That's it! You guessed it in "+ attempts + " tries");

  }
}