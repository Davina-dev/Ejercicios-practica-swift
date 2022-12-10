import UIKit
/*
//🤖 EJERCICIO 1

    //Calcular y generar lista de 100 primeros núm. primos
    var primeNumbersList:[Int]=[];

    func isPrime(num:Int) -> Bool{
        for nPrime in primeNumbersList{
            if(num % nPrime == 0){
                return false;
            }
        }
        return true;
    };
       
        
    func calculatePrimeList(){
        var n = 2;
        repeat {
            
            if(isPrime(num: n)){
                primeNumbersList.append(n);
            };
            n += 1;
        } while (primeNumbersList.count < 100)
    };

    calculatePrimeList();

    // Imprimir los últimos 10
    let listPrimeReverse = primeNumbersList.reversed();

    for(index, num) in listPrimeReverse.enumerated() where index < 10{
        print(num);
    };
    

//🤖 EJERCICIO 2

    //Calcular la suma de los primeros 50 números primos e imprimir el resultado
    var sum = 0;
    
    for(index, num) in primeNumbersList.enumerated() where index < 50{
        sum += num;
    };
    print("Sum of the first 50 prime numbers: \(sum)");



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
                listThanTwoVowels.append(player);
            }
            countVowels = 0;
        }
        return(listThanTwoVowels);
     };
          

    getMoreThanTwoVowels();


  
//🤖 EJERCICIO 4

    //crear enum  que permita indicar la posición en el campo de un jugador de fútbol, por ejemplo: Portero, Lateral Derecho, Central, Lateral Izquierdo, Mediocentro, Extremo Derecha, Extremo Izquierda, Delantero, etc
        
    enum PlayerPosition {
        case portero
        case lateralIzquierda
        case central
        case lateralDerecho
        case mediocentro
        case extremoDerecho
        case extremoIzquierdo
        case delantero
        
    };

//🤖 EJERCICIO 5

    //crear clase con atributos para representar a los miembros que participan en una selección mundial y un enumerado que los diferencie por tipos

    enum Members{
        case player(String)
        case selector(String)
        case doctor(String)
    };

    class WorldTeamMembrers {
        private var nameTeam:String;
        private var workTeam:[Members];
        
        init(name: String = "team", player: Members = .player("playerDefault"),selector: Members = .selector("selectorDefault"), doctor: Members = .player("doctorDefault")){
            self.nameTeam = name;
            self.workTeam = [player, selector, doctor];
        }
            
    };

    var myTeam:WorldTeamMembrers = WorldTeamMembrers();
 */
 //🤖 EJERCICIO 6

//Crear las clases necesarias, con los atributos mínimos, para representar las selecciones de fútbol del Mundial de fútbol 2022, por ejemplo: Una clase que represente el Mundial, necesitaremos que contenga un listado de Selecciones, cada selección tendrá sus atributos, como nombre, país, jugadores, seleccionador, etc.

    class NationalTeam{
        var name:String;
        var country: String;
        var players:[String];
        var removed:Bool = false;
        var coach: String;

        
        init(nameTeam: String, countryTeam: String, playersTeam:[String], coach: String = "🤷‍♂️" ){
            self.name = nameTeam;
            self.players = playersTeam;
            self.country = countryTeam;
            self.coach = coach;
        }
    }

    class WorldCup{
        var nationalTeamList: [NationalTeam] = []
        
        init(participatingTeams:[NationalTeam]) {
            self.nationalTeamList = participatingTeams;
        }
        
    }

    var team1: NationalTeam = NationalTeam(nameTeam:"A", countryTeam: "🏴‍☠️", playersTeam: ["p1", "p2", "p3"])
    var team2: NationalTeam = NationalTeam(nameTeam:"B", countryTeam: "🏁",  playersTeam: ["p1", "p2", "p3"])
    var team3: NationalTeam = NationalTeam(nameTeam:"C", countryTeam: "🏳",  playersTeam: ["p1", "p2", "p3"])
    var team4: NationalTeam = NationalTeam(nameTeam:"D", countryTeam: "🏴",  playersTeam: ["p1", "p2", "p3"])
    var team5: NationalTeam = NationalTeam(nameTeam:"E", countryTeam: "🚩",  playersTeam: ["p1", "p2", "p3"])
    var mySeleccion:WorldCup = WorldCup(participatingTeams:[team1,team2, team3, team4, team5])
 
//🤖 EJERCICIO 7

    // Crear una clase para representar los partidos entre selecciones, deberá contener atributos como equipo local, visitante y resultado como mínimo. Generar una lista aleatoria de partidos entre la lista de selecciones anteriores y hacer un print de este estilo por partido: Partido: España 3 - 1 Brasil

/*class Match{
    var localTeam: Selection;
    var visitTeam: Selection;
    var result:[Int] = [0,0]
    
}*/
