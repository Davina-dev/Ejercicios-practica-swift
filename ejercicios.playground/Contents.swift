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
    



