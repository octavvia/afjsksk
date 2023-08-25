class Solution {
    // kode berjenis list yang berisi int 
  List<int> twoSum(List<int> nums, int target) {
    // mapping integer 
    Map<int, int> arrayMap = {};

    // dengan perulangan naik panjang max nums.leght
    for (int i = 0; i < nums.length; i++) {
        // ditampung dalam variabel complement tipe int dengan operasi
        // target dikurangi nums yang naik
      final int complement = target - nums[i];

        // jika dalam map array mengandung hasil complements 
      if (arrayMap.containsKey(complement)) {
          // dikembalikan ini
        return [arrayMap[complement]!, i];
      }

      arrayMap[nums[i]] = i;
    }

    return []; // kembalinya berbentuk array
  }
}
