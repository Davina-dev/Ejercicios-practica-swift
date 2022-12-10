import UIKit

// EJERCICIO 1

    //Calcular y generar lista de 100 primeros núm. primos
var primeNumbersList:[Int]=[];

func isPrime(num:Int) -> Bool{
    for nPrime in primeNumbersList{
        if(num % nPrime == 0){
            return false
        }
    }
    return true
}
   
    
func calculatePrimeList(){
    var n = 2
    repeat {
        
        if(isPrime(num: n)){
            primeNumbersList.append(n);
        }
        n += 1;
    } while (primeNumbersList.count < 100)
}

calculatePrimeList()

    // Imprimir los últimos 10
let listPrimeReverse = primeNumbersList.reversed()

for(index, num) in listPrimeReverse.enumerated() where index < 10{
    print(num);
}
    


// EJERCICIO 2

    //Calcular la suma de los primeros 50 números primos e imprimir el resultado

    var sum = 0;
    
    for(index, num) in primeNumbersList.enumerated() where index < 50{
        sum += num;
    }
    print("Sum of the first 50 prime numbers: \(sum)")




