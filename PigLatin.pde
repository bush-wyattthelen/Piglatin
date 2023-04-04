public void setup() 
{
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}

public void draw()
{
        //not used
}

public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  sWord = sWord.toLowerCase();
  
  for (int i = 0; i < sWord.length(); i++) {
    char ch = sWord.charAt(i);
    if (ch == 97 || ch == 101 || ch == 105 || ch == 111 || ch == 117) return i;
  }
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  int firstVowel = findFirstVowel(sWord);
  if(firstVowel == -1)
  {
    return sWord + "ay";
  }
  else if (firstVowel == 0) {
    return sWord + "way";
  }
  else if (sWord.charAt(0) == 'q' && sWord.charAt(1) == 'u') {
    return sWord.substring(2, sWord.length()) + "quay";
  }
  else {
    return sWord.substring(1, sWord.length()) + sWord.charAt(0) + "ay";
  }
}
