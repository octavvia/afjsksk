function majorityElement(nums: number[]): number {
    let x; // mendefinisikan x
    let y = 0; // mendefinisikan nilai y = 0 
    
    for (const num of nums) { // menggunakan perulangan sebanyak num
        if (y === 0) { // kalo y adalah 0
            x = num; // maka nilai x adalah sama seperti num
        }
        
        y += (num === x) ? 1 : -1 // pengubahan nilai y akan ditambah hasil dari operasi yang berada didalam kurung , apakah 1 atau -1
    }
    
    return x; // dikembalikan hasilnya x 
};