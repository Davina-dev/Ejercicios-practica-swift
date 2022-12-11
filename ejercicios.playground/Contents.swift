import UIKit

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
    var players:[String] = ["Vinicius","ki", "Messi", "Ronaldo","pi","Pedri", "Mbappe",
                             "Modric”", "Militao", "Morata", "Valverde", "Benzema", "Piqué","lo" ];


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

    enum Member{
        case player(String)
        case coach(String)
        case doctor(String)
    };

    class NationalTeam{
        private var nameTeam:String;
        private var members:[Member];
        private var country: String
        
        init(name: String, members: [Member], country: String){
            self.nameTeam = name;
            self.members = members;
            self .country = country;
        }
            
    };

    var team1 : NationalTeam = NationalTeam(name: "nameTeam1", members: [.coach("Entrenador1"), .doctor("doctor1"), .player("Vinicius"), .player("Messi"),.player("Pedri"),.player("Piqué"),.player("Valverde")], country: "Spain" );

    var team2 : NationalTeam = NationalTeam(name: "nameTeam2", members: [.coach("Entrenador2"), .doctor("doctor2"), .player("Ro-ró"), .player("Akram"),.player("Ali"),.player("Afif"),.player("Boudiaf")], country: "Qatar" );


    var team3 : NationalTeam = NationalTeam(name: "nameTeam3", members: [.coach("Entrenador3"), .doctor("doctor3"), .player("Enner"), .player("Ibarra"),.player("Piero"),.player("Gonzalo"),.player("Jeremy")], country: "Ecuador" );


    var team4 : NationalTeam = NationalTeam(name: "nameTeam4", members: [.coach("Entrenador4"), .doctor("doctor4"), .player("Kalidou"), .player("Mendy"),.player("Diallo"),.player("Ismaïla"),.player("Valverde")], country: "Senegal" );


 //🤖 EJERCICIO 6

//Crear las clases necesarias, con los atributos mínimos, para representar las selecciones de fútbol del Mundial de fútbol 2022, por ejemplo: Una clase que represente el Mundial, necesitaremos que contenga un listado de Selecciones, cada selección tendrá sus atributos, como nombre, país, jugadores, seleccionador, etc.

   

    class WorldCup{
        var listNationalTeam: [NationalTeam];
            
        init(listTeams: [NationalTeam]) {
                self.listNationalTeam = listTeams;
            }
        }

    var listTeams :WorldCup = WorldCup(listTeams: [team1, team2, team3, team4 ])
      
//🤖 EJERCICIO 7

    // Crear una clase para representar los partidos entre selecciones, deberá contener atributos como equipo local, visitante y resultado como mínimo. Generar una lista aleatoria de partidos entre la lista de selecciones anteriores y hacer un print de este estilo por partido: Partido: España 3 - 1 Brasil


    class Match{
        var localTeam: NationalTeam;
        var visitTeam: NationalTeam;
        var resultLocalTeam: Int;
        var resultVisitTeam: Int;
        
        init(localTeam: NationalTeam, visitTeam: NationalTeam, optionalTeam: NationalTeam, resultLocalTeam: Int, resultVisitTeam: Int){
          
            self.resultLocalTeam = resultLocalTeam;
            self.resultVisitTeam = resultVisitTeam;
        
            if(resultLocalTeam == resultVisitTeam){
                self.visitTeam = optionalTeam;
            }
            
            self.localTeam = localTeam;
            self.visitTeam = visitTeam;
        }
            
    }

    var localTeamRandom: NationalTeam = listTeams.listNationalTeam.randomElement()!
    var visitTeamRandom: NationalTeam = listTeams.listNationalTeam.randomElement()!
    var optionalTeamRandom: NationalTeam = listTeams.listNationalTeam.randomElement()!
    var resultLocalTeam: Int = Int.random(in: 0...10)
    var resultVisitTime: Int = Int.random(in: 0...10)

    var firstMatch: Match = Match( localTeam: localTeamRandom, visitTeam: visitTeamRandom, optionalTeam: optionalTeamRandom,  resultLocalTeam: resultLocalTeam, resultVisitTeam: resultVisitTime)

   
   

//🤖 EJERCICIO 8

    // Generar de forma aleatoria, dentro de la clase Mundial, un listado de grupos con un máximo de 4 selecciones por grupo, se puede crear una clase nueva Grupo que contenga el nombre del grupo, listado de participantes y listado de partidos. Por ejemplo: Grupo A España, Brasil, Francia, Alemania.


/*
class GroupWorldCup {
    var group : String
    var matches: WorldCup
    
    
    init(groupTeam nameGroup: String ,nameTeam : WorldCup){
        self.matches = nameTeam;
        self.group = nameGroup;
    }
}

extension WorldCup{
    func generateGroupRandom(groupTeam:GroupWorldCup) {
        
        var listGroup: [String] = [];
        var nameGroup = groupTeam.matches
        var team = groupTeam.group
    
        func get teamsByGroup() -> [String]{
            repeat {
                listGroup.append(team)
                };
            } while (listGroup.count < 4)
               return listGroup
        };
        }
      
        
        
    }
}

var firstGroup: GroupWorldCup = GroupWorldCup ( groupTeam: "A", nameTeam: myTeams )

myTeams.generateGroupRandom(groupTeam: firstGroup)
*/



//🤖 EJERCICIO 9

    // Para añadir a cada Grupo los puntos de cada selección habrá que contabilizar las victorias con 3 puntos, empates con 1 y derrotas con 0. Añadir una función en la clase Grupo que le pasemos una selección y nos devuelva sus puntos.


//🤖 EJERCICIO 10

    // Generar los partidos del Mundial en cada grupo y calcular las dos primeras selecciones de cada grupo y hacer un print con los clasificados
