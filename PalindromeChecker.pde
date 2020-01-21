public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for(int i=0; i < lines.length; i++) 
  {
    if(palindrome(onlyLetters(noCapitals(lines[i])))==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String reversed = new String();
  for(int i = word.length() - 1; i >= 0; i--)
  {
    reversed = reversed + word.charAt(i);
  }
  if(reversed.equals(word))
  {
    return true;
  }else{
    return false;
  }
}
// unused code :p
//public String reverse(String str)
//{
//    String sNew = new String();
//    //your code here
//    return sNew;
//}
public String onlyLetters(String sString){
  String letters = new String();
  for(int i = 0; i < sString.length(); i++)
  {
    if(Character.isLetter(sString.charAt(i)))
    {
      letters = letters + sString.charAt(i);
    }
  }
  return letters;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

