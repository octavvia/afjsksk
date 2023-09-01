/**
 * Definition for singly-linked list.
 * class ListNode {
 *     val: number
 *     next: ListNode | null
 *     constructor(val?: number, next?: ListNode | null) {
 *         this.val = (val===undefined ? 0 : val)
 *         this.next = (next===undefined ? null : next)
 *     }
 * }
 */


//Ini adalah deklarasi fungsi bernama mergeTwoLists yang menerima dua parameter, yaitu l1 dan l2, yang masing-masing merupakan pointer ke awal dari dua linked list yang ingin digabungkan. Tipe parameter tersebut adalah ListNode | null, yang berarti parameter bisa berupa ListNode atau null, mengindikasikan bahwa linked list bisa kosong. 
function mergeTwoLists(l1: ListNode | null, l2: ListNode | null): ListNode | null {

//Ini adalah basis dari rekursi. Jika linked list pertama (l1) kosong, maka kita mengembalikan linked list kedua (l2) karena tidak perlu melakukan penggabungan lebih lanjut.
  if (l1 === null) { return l2 }

//Ini adalah kasus lain dari basis rekursi. Jika linked list kedua (l2) kosong, maka kita mengembalikan linked list pertama (l1).
  if (l2 === null) { return l1 }


//Membandingkan nilai (val) dari elemen pertama (val) dari linked list l1 dengan elemen pertama dari linked list l2.
  if (l1.val < l2.val) 

// Jika nilai elemen pertama dari l1 lebih kecil dari nilai elemen pertama dari l2, maka kita mengatur l1.next untuk merujuk ke hasil rekursif dari memanggil fungsi mergeTwoLists dengan l1.next sebagai linked list pertama berikutnya yang akan dibandingkan dan l2 tetap sama. Kemudian, kita mengembalikan l1 sebagai linked list hasil penggabungan.
       { l1.next = mergeTwoLists(l1.next, l2); return l1 } 

// else { l2.next = mergeTwoLists(l1, l2.next); return l2 }
// Jika kondisi sebelumnya salah (nilai elemen pertama dari l1 tidak lebih kecil dari nilai elemen pertama dari l2), maka kita mengatur l2.next untuk merujuk ke hasil rekursif dari memanggil fungsi mergeTwoLists dengan l1 tetap sama dan l2.next sebagai linked list kedua berikutnya yang akan dibandingkan. Kemudian, kita mengembalikan l2 sebagai linked list hasil penggabungan.
  else { l2.next = mergeTwoLists(l1, l2.next); return l2 }
}