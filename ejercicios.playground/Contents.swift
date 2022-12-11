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
        let vowels : String = "aeiou"
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
        var nameTeam:String;
        var members:[Member];
        var country: String
        
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

    var team5 : NationalTeam = NationalTeam(name: "nameTeam5", members: [.coach("Entrenador5"), .doctor("doctor5"), .player("Ka"), .player("Me"),.player("Di"),.player("Is"),.player("Val")], country: "Francia" );

    var team6 : NationalTeam = NationalTeam(name: "nameTeam6", members: [.coach("Entrenador6"), .doctor("doctor6"), .player("Kaju"), .player("Meli"),.player("Dino"),.player("Isma"),.player("Vagi")], country: "Malta" );


 //🤖 EJERCICIO 6

//Crear las clases necesarias, con los atributos mínimos, para representar las selecciones de fútbol del Mundial de fútbol 2022, por ejemplo: Una clase que represente el Mundial, necesitaremos que contenga un listado de Selecciones, cada selección tendrá sus atributos, como nombre, país, jugadores, seleccionador, etc.

   

    class WorldCup{
        var listNationalTeam: [NationalTeam];
            
        init(listTeams: [NationalTeam]) {
                self.listNationalTeam = listTeams;
            }
        }

    var listTeamsWorldCup :WorldCup = WorldCup(listTeams: [team1, team2, team3, team4, team5, team6 ])
      
//🤖 EJERCICIO 7

    // Crear una clase para representar los partidos entre selecciones, deberá contener atributos como equipo local, visitante y resultado como mínimo. Generar una lista aleatoria de partidos entre la lista de selecciones anteriores y hacer un print de este estilo por partido: Partido: España 3 - 1 Brasil


    class Match{
        var localTeam: NationalTeam;
        var visitTeam: NationalTeam;
        var resultLocalTeam: Int;
        var resultVisitTeam: Int;
        
        init(localTeam: NationalTeam, visitTeam: NationalTeam, resultLocalTeam: Int, resultVisitTeam: Int){
          
            self.resultLocalTeam = resultLocalTeam;
            self.resultVisitTeam = resultVisitTeam;
            self.localTeam = localTeam;
            self.visitTeam = visitTeam;
        }
            
    }

    var localTeamRandom: NationalTeam
    var visitTeamRandom: NationalTeam

    repeat{
        localTeamRandom = listTeamsWorldCup.listNationalTeam.randomElement()!
        visitTeamRandom = listTeamsWorldCup.listNationalTeam.randomElement()!
    }while( localTeamRandom === visitTeamRandom)
  
  
    var resultLocalTeam: Int = Int.random(in: 0...10)
    var resultVisitTime: Int = Int.random(in: 0...10)

    var firstMatch: Match = Match( localTeam: localTeamRandom, visitTeam: visitTeamRandom, resultLocalTeam: resultLocalTeam, resultVisitTeam: resultVisitTime)

   
   

//🤖 EJERCICIO 8

    // Generar de forma aleatoria, dentro de la clase Mundial, un listado de grupos con un máximo de 4 selecciones por grupo, se puede crear una clase nueva Grupo que contenga el nombre del grupo, listado de participantes y listado de partidos. Por ejemplo: Grupo A España, Brasil, Francia, Alemania.

 class Group {
    var groupName: String = "";
    var groupTeams: [String] = [];
     
    func addTeam( team:String ){
        groupTeams.append(team);
    };
}

extension WorldCup{
    
    func nextGenerateWorldGroup() -> Group{
        let groupNames: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I"];
        var listOfSelectedTeams:[NationalTeam] = listNationalTeam.shuffled();
        var group: Group = Group()
        var teamsPerGroup = 4;
       
       
        for groupToAssign in 0...(listOfSelectedTeams.count)-1 {
            group.groupName = groupNames[groupToAssign]
           
            var teamIndex = 0;
            while(teamIndex < teamsPerGroup){
                group.addTeam( team: listOfSelectedTeams[teamIndex].country )
                teamIndex += 1;
            }
            break
        }
        return group
    }
}

listTeamsWorldCup.nextGenerateWorldGroup()


//🤖 EJERCICIO 9

    // Para añadir a cada Grupo los puntos de cada selección habrá que contabilizar las victorias con 3 puntos, empates con 1 y derrotas con 0. Añadir una función en la clase Grupo que le pasemos una selección y nos devuelva sus puntos.

extension Group{
    
    
}

//🤖 EJERCICIO 10

    // Generar los partidos del Mundial en cada grupo y calcular las dos primeras selecciones de cada grupo y hacer un print con los clasificados
