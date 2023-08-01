class Solution {
  String? convert(String s, int numRows) {
      bool isDcreamint=false;
      int i=0;
      List<List<String>> strlLists=List.generate(numRows, (index) => []);
      String finals='';
      if(numRows==1||s.length==1) finals=s;
      else{
      while(i!=s.length-1){
        for(int j=0;j<numRows;isDcreamint?j--:j++){
          print(j);
          if(j==numRows-1)isDcreamint=true;
          if(j==0)isDcreamint=false;
          strlLists[j].add(s[i]);
          if(i==s.length-1){
            break;
          }
          i++;
        }
      }
      for(int k=0;k<strlLists.length;k++){
        for(int j=0;j<strlLists[k].length;j++){
          finals='$finals'+'${strlLists[k][j]}';
        }
      }}
      return finals;
  }
}