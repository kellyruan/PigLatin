import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	for (int i=0; i<sWord.length(); i++) {
 	  String s = sWord.substring(i,i+1);
  	  if (s.equals("a")||s.equals("e")||s.equals("i")||s.equals("o")||s.equals("u")) {
  	    return i;
   	  }
    }
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if (findFirstVowel(sWord) == 0)
	{
		return sWord + "way";
	}
	else if (sWord.substring(0,1).equals("q") && sWord.substring(1,2).equals("u"))
	{
		return sWord.substring(2,sWord.length()) + "quay";
	}
	else if (findFirstVowel(sWord) != -1 && findFirstVowel(sWord) != 0)
	{
		return sWord.substring(findFirstVowel(sWord),sWord.length()) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
	}
	else
	{
		return "ERROR!";
	}
}
