
class WordCount {
  
  Map<String,int> countWords(String input){

    List<String> workList = input.toLowerCase()
        .split(RegExp(r"[^\w']")) 
        .map((w) =>  w.replaceAll(RegExp(r"^'|'$"), ""))
        .where((text) => text.isNotEmpty) //filter out non-empty elements
        .toList();
    
    Map<String,int> count ={};

    for(var work in workList){

      count[work] = (count[work] ?? 0) + 1;
    }

    return count;
  }
}

void main(){
  final wordCount = WordCount();

  print(wordCount.countWords("That's the password: 'PASSWORD 123'!, cried the Special Agent.\nSo I fled."));
}