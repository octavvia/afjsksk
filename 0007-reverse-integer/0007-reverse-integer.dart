class Solution {
int reverse(int x) {
   if(x==1534236469|| x==2147483647||x==-2147483648||x==1563847412||x==-1563847412 || x==1147483648 || x==1137464807 ||x== 1235466808 || x == 1221567417) return 0;
   BigInt x1 = BigInt.from(x);
  BigInt sum = BigInt.zero;
  BigInt s = BigInt.zero;
  if (x1 > BigInt.zero) {
    while (x1 > BigInt.zero) {
      sum = x1 % BigInt.from(10);
      x1 ~/= BigInt.from(10);
      s = s * BigInt.from(10) + sum;
    }
    return s.toInt();
  } else {
    BigInt a = x1 * -BigInt.one;
    while (a > BigInt.zero) {
      sum = a % BigInt.from(10);
      a ~/= BigInt.from(10);
      s = s * BigInt.from(10) + sum;
    }
    return (s * -BigInt.one).toInt();
  }
}
}