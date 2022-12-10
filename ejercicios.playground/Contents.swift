import UIKit
/*
//🤖 EJERCICIO 1

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
    

//🤖 EJERCICIO 2

    //Calcular la suma de los primeros 50 números primos e imprimir el resultado
    var sum = 0;
    
    for(index, num) in primeNumbersList.enumerated() where index < 50{
        sum += num;
    }
    print("Sum of the first 50 prime numbers: \(sum)")

*/

//🤖 EJERCICIO 3

    // Obtener los elementos de la lista que contengan más de dos vocales
    var players:[String] = ["Vinicius", "Messi", "Ronaldo", "Pedri", "Mbappe",
                             "Modric”", "Militao", "Morata", "Valverde", "Benzema", "Piqué" ];


func getMoreThanTwoVowels(list: [String] = players)->[String]{
    var vowels : String = "aeiou"
    var countVowels:Int = 0;
    var listThanTwoVowels : [String]=[];

    
    for player in players {
        for char in player{
            if( vowels.contains(char)){
                countVowels += 1;
            }
        }
        if(countVowels > 1){
            listThanTwoVowels.append(player)
        }
        countVowels = 0;
    }
    return(listThanTwoVowels)
}
      

getMoreThanTwoVowels()

  

        
