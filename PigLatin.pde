public ArrayList <String> list = new ArrayList <String>();
public void setup()
{
  String[] lines = {"beast", "dough", "happy", "question", "star", "three", "eagle", "try"};
  String phrase = "With heads bared we stand In tribute to thee Our Alma-Mater Lowell All true to thee we'll be Unfurled red and white None shall thee decry They name we love Oh Lowell High";

  
  stringDectector(phrase);
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++)
  {
    System.out.println(pigLatin(lines[i]));
  }
  for(int i = 0; i < list.size(); i++)
  {
    System.out.print(pigLatin(list.get(i)) + " ");
    
  }
}
public void draw()
{
  //not used
}
public int findFirstVowel(String word)
  //precondition: sWord is a valid String of length greater than 0.
  //postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  
  for (int i = 0; i < word.length(); i++)
    if (word.charAt(i) == 'a' || word.charAt(i) == 'e' ||
      word.charAt(i) == 'i' || word.charAt(i) == 'o' || word.charAt(i) == 'u' ||
      word.charAt(i) == 'A' || word.charAt(i) == 'E' ||
      word.charAt(i) == 'I' || word.charAt(i) == 'O' || word.charAt(i) == 'U')
      return i;
  return -1;
}

public String pigLatin(String sWord)
  //precondition: sWord is a valid String of length greater than 0
  //postcondition: returns the pig latin equivalent of sWord
{
  if (findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  } else if (findFirstVowel(sWord) == 0) {
    return sWord + "way";
  } else if (sWord.substring(0, 2).equals("qu")) {
    return sWord.substring(2) + "quay";
  } else if (findFirstVowel(sWord) > 0) { 
    return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0, findFirstVowel(sWord)) + "ay";
  } else {
    return "ERROR!";
  }
}
public void stringDectector(String sWord)
{
  int indexPos = 0;
  for(int i = 0; i < sWord.length(); i++){
    if(sWord.substring(i, i+1).equals(" ")){
      list.add(sWord.substring(indexPos, i));
      indexPos = i + 1;
      System.out.println(list);
      System.out.println(list.size());
    }
  }
}
