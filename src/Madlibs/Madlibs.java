import java.util.Scanner;

class Prompts {
  public String word;
  Prompts(String word) {
    this.word = word;
  }
}
public class Main
{ 
  public static void main(String[] args) {
    System.out.println("Welcome to Madlibs, please enter a holiday:");
    Scanner scanner0 = new Scanner(System.in);
    String userInput0 = scanner0.nextLine();

    System.out.println("Please enter a relative name:");
    Scanner scanner1 = new Scanner(System.in);
    String userInput1 = scanner1.nextLine();

    System.out.println("Please enter a room in the house");
    Scanner scanner2 = new Scanner(System.in);
    String userInput2 = scanner2.nextLine();

    System.out.println("Please enter an animal(plural):");
    Scanner scanner3 = new Scanner(System.in);
    String userInput3 = scanner3.nextLine();

    System.out.println("Please enter a relative name:");
    Scanner scanner4 = new Scanner(System.in);
    String userInput4 = scanner4.nextLine();

    System.out.println("Please enter a food(plural):");
    Scanner scanner5 = new Scanner(System.in);
    String userInput5 = scanner5.nextLine();

    System.out.println("Please enter a dessert:");
    Scanner scanner6 = new Scanner(System.in);
    String userInput6 = scanner6.nextLine();

    System.out.println("Please enter a vehicle");
    Scanner scanner7 = new Scanner(System.in);
    String userInput7 = scanner7.nextLine();

    System.out.println("Please enter a store:");
    Scanner scanner8 = new Scanner(System.in);
    String userInput8 = scanner8.nextLine();

    System.out.println("Please enter a food type:");
    Scanner scanner9 = new Scanner(System.in);
    String userInput9 = scanner9.nextLine();

    System.out.println("Please enter a number:");
    Scanner scanner10 = new Scanner(System.in);
    String userInput10 = scanner10.nextLine();

    System.out.println("Please enter an adjective:");
    Scanner scanner11 = new Scanner(System.in);
    String userInput11 = scanner11.nextLine();

    Prompts[] arr;
    arr = new Prompts[12];
    arr[0] = new Prompts(userInput0);
    arr[1] = new Prompts(userInput1);
    arr[2] = new Prompts(userInput2);
    arr[3] = new Prompts(userInput3);
    arr[4] = new Prompts(userInput4);
    arr[5] = new Prompts(userInput5);
    arr[6] = new Prompts(userInput6);
    arr[7] = new Prompts(userInput7);
    arr[8] = new Prompts(userInput8);
    arr[9] = new Prompts(userInput9);
    arr[10] = new Prompts(userInput10);
    arr[11] = new Prompts(userInput11);
    System.out.println("Today is " + arr[0].word + ", my family celebrates the day by having a feast. \n" + arr[1].word + " is downstairs in the " + arr[2].word + " cooking the "  + arr[3].word + ", and " + arr[4].word + " prepares the " + arr[5].word + ".\n I noticed that our supply of " + arr[6].word +  " is really low,\n I rode a/an " + arr[7].word + " to the nearby "  + arr[8].word + " to buy some more. \n At the store, I looked far and wide for " + arr[6].word + " until I finally found one in the " + arr[9].word + " aisle. The " + arr[6].word + " costs " + arr[10].word +  " dollars.\n This price is very " + arr[11].word + ", I decided not to buy the " + arr[6].word + " and return home empty handed.\n My relatives weren't happy that there is no " + arr[6].word + " for tonight's feast,\n because " + arr[6].word + " is supposed to be a very important part of our celebration.");
  }
}