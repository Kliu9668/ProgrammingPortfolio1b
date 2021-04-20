import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.io.BufferedWriter;
import java.io.IOException;
import java.util.Scanner;
import java.util.Random;

class Prompts {
  public String word;

  Prompts(String word) {
    this.word = word;
  }
}

class Main {
  public static void main(String[] args) {
    Prompts[] arr;
    arr = new Prompts[10];
    arr[0] = new Prompts("What is your favorite sport? Why?");
    arr[1] = new Prompts("What is your favorite season? Why?");
    arr[2] = new Prompts("What is your favorite food? Why?");
    arr[3] = new Prompts("What is your favorite school subject? Why?");
    arr[4] = new Prompts("What is your favorite hobby? Why?");
    arr[5] = new Prompts("What is your favorite animal? Why?");
    arr[6] = new Prompts("What is your favorite book? Why?");
    arr[7] = new Prompts("What is your favorite movie? Why?");
    arr[8] = new Prompts("What is your favorite drink? Why?");
    arr[9] = new Prompts("What is your favorite dessert? Why?");

    Random random = new Random();
    int arrayNum = random.nextInt(9);
    String question = new String(arr[arrayNum].word);
    System.out.println(question + "\n Please type your answer below:");
    Scanner scanner = new Scanner(System.in);
    String userInput = scanner.nextLine();

    try {
      File file = new File("output.txt");
      if (!file.exists()){
        file.createNewFile();
      }
      FileWriter fw = new FileWriter(file, true);
      BufferedWriter bw = new BufferedWriter(fw);
      PrintWriter pw = new PrintWriter(bw);
      
      pw.println(question + "\n" + userInput);
      pw.close();

      System.out.println("Data successfully appended at the end of output file");
    } catch (IOException ioe) {
      System.out.println("Exception occurred");
      ioe.printStackTrace();
    }
  }
}