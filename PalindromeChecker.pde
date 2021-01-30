public void setup(){
  String lines[] = {"test", "rotator", "rewriter", "nurses run", "Madam, I'm Adam!", "A Man! A Plan! A Canal! Panama!"};
  System.out.println("There are " + lines.length + " lines");
  for(int i = 0; i < lines.length; i++) {
    if(palindrome(lines[i]) == true){
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else{
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word){
  String x = onlyLetters(word);
  String y = noCapitals(x);
  String s = reverse(y);
  if(onlyLetters(y).equals(s)){
    return true;
  }
  else{
    return false;
  }
}

public String reverse(String word){
  String sWord = new String();
  for(int i = word.length()-1; i >= 0; i--) {
    sWord = sWord + word.charAt(i);
  }
  return sWord;
}

public String noCapitals(String word){
  return word.toLowerCase();
}

public int numLetters(String word){
  int num = 0;
  for(int i = 0; i < word.length(); i++){
    if(Character.isLetter(word.charAt(i)) == true){
      num ++;
    }
  }
  return num;
}

public String onlyLetters(String word){
  String hi = new String();
  for(int i = 0; i < word.length(); i++){
    if(Character.isLetter(word.charAt(i)) == true){
      hi = hi + word.charAt(i);
    }
  }
  return hi;
}
