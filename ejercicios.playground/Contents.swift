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
        var country: String;
        var points = 0;
        
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

    var team7 : NationalTeam = NationalTeam(name: "nameTeam7", members: [.coach("Entrenador7"), .doctor("doctor7"), .player("Ro-ró"), .player("Akram"),.player("Ali"),.player("Afif"),.player("Boudiaf")], country: "Albania" );

    var team8 : NationalTeam = NationalTeam(name: "nameTeam8", members: [.coach("Entrenador8"), .doctor("doctor8"), .player("Enner"), .player("Ibarra"),.player("Piero"),.player("Gonzalo"),.player("Jeremy")], country: "Congo" );




 //🤖 EJERCICIO 6

//Crear las clases necesarias, con los atributos mínimos, para representar las selecciones de fútbol del Mundial de fútbol 2022, por ejemplo: Una clase que represente el Mundial, necesitaremos que contenga un listado de Selecciones, cada selección tendrá sus atributos, como nombre, país, jugadores, seleccionador, etc.

   

    class WorldCup{
        var listNationalTeam: [NationalTeam];
        var listgroups: [Group] = [];
        init(listTeams: [NationalTeam]) {
                self.listNationalTeam = listTeams;
            }
        }

    var listTeamsWorldCup :WorldCup = WorldCup(listTeams: [team1, team2, team3, team4, team5, team6, team7, team8 ])
      
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

var firstMatch: Match = Match( localTeam: localTeamRandom, visitTeam: visitTeamRandom, resultLocalTeam: resultLocalTeam, resultVisitTeam: resultVisitTime);
var secondtMatch: Match = Match( localTeam: localTeamRandom, visitTeam: visitTeamRandom, resultLocalTeam: resultLocalTeam, resultVisitTeam: resultVisitTime);

   
   

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
    
    func generateGroup() {
        let groupNames: [String] = ["A", "B","C","D","E","F","G","H"];
        var listOfSelectedTeams:[NationalTeam] = listNationalTeam.shuffled();
       
        var teamsPerGroup = 4;
        var firstTeam = 0;
        
        for groupToAssign in 0...(groupNames.count-1) {
            var group: Group = Group()
            group.groupName = groupNames[groupToAssign]

           for teamIndex in firstTeam...firstTeam+teamsPerGroup-1 {
               group.addTeam( team: listOfSelectedTeams[teamIndex].country )
            }
            firstTeam += teamsPerGroup
            listgroups.append(group)
        }
        
    }
}




//🤖 EJERCICIO 9

    // Para añadir a cada Grupo los puntos de cada selección habrá que contabilizar las victorias con 3 puntos, empates con 1 y derrotas con 0. Añadir una función en la clase Grupo que le pasemos una selección y nos devuelva sus puntos.
extension Match{
    
    func calculatePoints(){
        if(self.resultLocalTeam > self.resultVisitTeam){
            self.localTeam.points += 3
        } else if(self.resultLocalTeam < self.resultVisitTeam){
            self.visitTeam.points += 3
        } else{
            self.visitTeam.points += 1;
            self.localTeam.points += 1;
        }
    }
}

extension Group{
    func generatepointsCounter(team: NationalTeam)-> Int{
        return team.points
    }
    
}


//🤖 EJERCICIO 10

    // Generar los partidos del Mundial en cada grupo y calcular las dos primeras selecciones de cada grupo y hacer un print con los clasificados

        //genero equipos copa del mundo
        var team_1 : NationalTeam = NationalTeam(name: "nameTeam1", members: [.coach("Entrenador1"), .doctor("doctor1"), .player("Vinicius"), .player("Messi"),.player("Pedri"),.player("Piqué"),.player("Valverde")], country: "Spain_🇪🇸" );

        var team_2 : NationalTeam = NationalTeam(name: "nameTeam2", members: [.coach("Entrenador2"), .doctor("doctor2"), .player("Ro-ró"), .player("Akram"),.player("Ali"),.player("Afif"),.player("Boudiaf")], country: "Qatar_🇶🇦" );


        var team_3 : NationalTeam = NationalTeam(name: "nameTeam3", members: [.coach("Entrenador3"), .doctor("doctor3"), .player("Enner"), .player("Ibarra"),.player("Piero"),.player("Gonzalo"),.player("Jeremy")], country: "Ecuador_🇪🇨" );


        var team_4 : NationalTeam = NationalTeam(name: "nameTeam4", members: [.coach("Entrenador4"), .doctor("doctor4"), .player("Kalidou"), .player("Mendy"),.player("Diallo"),.player("Ismaïla"),.player("Valverde")], country: "Bahamas 🇧🇸" );

        var team_5 : NationalTeam = NationalTeam(name: "nameTeam5", members: [.coach("Entrenador5"), .doctor("doctor5"), .player("Kalidou"), .player("Mendy"),.player("Diallo"),.player("Ismaïla"),.player("Valverde")], country: "Chipre_🇨🇾" );

        var team_6: NationalTeam = NationalTeam(name: "nameTeam16", members: [.coach("Entrenador6"), .doctor("doctor6"), .player("Vinicius"), .player("Messi"),.player("Pedri"),.player("Piqué"),.player("Valverde")], country: "Andorra_🇦🇩" );

        var team_7 : NationalTeam = NationalTeam(name: "nameTeam7", members: [.coach("Entrenador7"), .doctor("doctor7"), .player("Ro-ró"), .player("Akram"),.player("Ali"),.player("Afif"),.player("Boudiaf")], country: "Albania_🇦🇱" );


        var team_8 : NationalTeam = NationalTeam(name: "nameTeam8", members: [.coach("Entrenador8"), .doctor("doctor8"), .player("Enner"), .player("Ibarra"),.player("Piero"),.player("Gonzalo"),.player("Jeremy")], country: "Congo_🇨🇬" );

        var team_9 : NationalTeam = NationalTeam(name: "nameTeam1", members: [.coach("Entrenador1"), .doctor("doctor1"), .player("Vinicius"), .player("Messi"),.player("Pedri"),.player("Piqué"),.player("Valverde")], country: "Spain 🇪🇸" );

        var team_10 : NationalTeam = NationalTeam(name: "nameTeam2", members: [.coach("Entrenador2"), .doctor("doctor2"), .player("Ro-ró"), .player("Akram"),.player("Ali"),.player("Afif"),.player("Boudiaf")], country: "Qatar 🇶🇦" );


        var team_11 : NationalTeam = NationalTeam(name: "nameTeam3", members: [.coach("Entrenador3"), .doctor("doctor3"), .player("Enner"), .player("Ibarra"),.player("Piero"),.player("Gonzalo"),.player("Jeremy")], country: "Arabia Saudí 🇸🇦" );


        var team_12 : NationalTeam = NationalTeam(name: "nameTeam4", members: [.coach("Entrenador4"), .doctor("doctor4"), .player("Kalidou"), .player("Mendy"),.player("Diallo"),.player("Ismaïla"),.player("Valverde")], country: "Canada 🇨🇦" );

        var team_13: NationalTeam = NationalTeam(name: "nameTeam5", members: [.coach("Entrenador5"), .doctor("doctor5"), .player("Kalidou"), .player("Mendy"),.player("Diallo"),.player("Ismaïla"),.player("Valverde")], country: "Gales 🏴󠁧󠁢󠁷󠁬󠁳󠁿" );

        var team_14: NationalTeam = NationalTeam(name: "nameTeam16", members: [.coach("Entrenador6"), .doctor("doctor6"), .player("Vinicius"), .player("Messi"),.player("Pedri"),.player("Piqué"),.player("Valverde")], country: "Irán 🇮🇷" );

        var team_15 : NationalTeam = NationalTeam(name: "nameTeam7", members: [.coach("Entrenador7"), .doctor("doctor7"), .player("Ro-ró"), .player("Akram"),.player("Ali"),.player("Afif"),.player("Boudiaf")], country: "Túnez 🇹🇳" );


        var team_16 : NationalTeam = NationalTeam(name: "nameTeam8", members: [.coach("Entrenador8"), .doctor("doctor8"), .player("Enner"), .player("Ibarra"),.player("Piero"),.player("Gonzalo"),.player("Jeremy")], country: "Dinamarca 🇩🇰" );

        var team_17 : NationalTeam = NationalTeam(name: "nameTeam", members: [.coach("Entrenador"), .doctor("doctor"), .player("Vinicius"), .player("Messi"),.player("Pedri"),.player("Piqué"),.player("Valverde")], country: "Países Bajos 🇳🇱" );

        var team_18 : NationalTeam = NationalTeam(name: "nameTeam", members: [.coach("Entrenador"), .doctor("doctor"), .player("Ro-ró"), .player("Akram"),.player("Ali"),.player("Afif"),.player("Boudiaf")], country: "inglaterra 🏴󠁧󠁢󠁥󠁮󠁧󠁿" );


        var team_19 : NationalTeam = NationalTeam(name: "nameTeam", members: [.coach("Entrenador"), .doctor("doctor3"), .player("Enner"), .player("Ibarra"),.player("Piero"),.player("Gonzalo"),.player("Jeremy")], country: "Portugal 🇵🇹" );


        var team_20 : NationalTeam = NationalTeam(name: "nameTeam", members: [.coach("Entrenador"), .doctor("doctor"), .player("Kalidou"), .player("Mendy"),.player("Diallo"),.player("Ismaïla"),.player("Valverde")], country: "Brasil 🇧🇷" );

        var team_21 : NationalTeam = NationalTeam(name: "nameTeam", members: [.coach("Entrenador"), .doctor("doctor"), .player("Kalidou"), .player("Mendy"),.player("Diallo"),.player("Ismaïla"),.player("Valverde")], country: "Suiza 🇨🇭" );

        var team_22: NationalTeam = NationalTeam(name: "nameTeam", members: [.coach("Entrenador"), .doctor("doctor"), .player("Vinicius"), .player("Messi"),.player("Pedri"),.player("Piqué"),.player("Valverde")], country: "Japón 🇯🇵" );

        var team_23 : NationalTeam = NationalTeam(name: "nameTeam", members: [.coach("Entrenador"), .doctor("doctor"), .player("Ro-ró"), .player("Akram"),.player("Ali"),.player("Afif"),.player("Boudiaf")], country: "Senegal 🇸🇳" );


        var team_24 : NationalTeam = NationalTeam(name: "nameTeam", members: [.coach("Entrenador"), .doctor("doctor"), .player("Enner"), .player("Ibarra"),.player("Piero"),.player("Gonzalo"),.player("Jeremy")], country: "Australia 🇦🇺" );

        var team_25 : NationalTeam = NationalTeam(name: "nameTeam", members: [.coach("Entrenador"), .doctor("doctor"), .player("Vinicius"), .player("Messi"),.player("Pedri"),.player("Piqué"),.player("Valverde")], country: "Polonia 🇵🇱" );

        var team_26 : NationalTeam = NationalTeam(name: "nameTeam", members: [.coach("Entrenador"), .doctor("doctor"), .player("Ro-ró"), .player("Akram"),.player("Ali"),.player("Afif"),.player("Boudiaf")], country: "Estados Unidos 🇺🇸" );


        var team_27 : NationalTeam = NationalTeam(name: "nameTeam", members: [.coach("Entrenador"), .doctor("doctor"), .player("Enner"), .player("Ibarra"),.player("Piero"),.player("Gonzalo"),.player("Jeremy")], country: "Ecuador 🇪🇨" );


        var team_28 : NationalTeam = NationalTeam(name: "nameTeam", members: [.coach("Entrenador"), .doctor("doctor"), .player("Kalidou"), .player("Mendy"),.player("Diallo"),.player("Ismaïla"),.player("Valverde")], country: "Baréin 🇧🇭" );

        var team_29: NationalTeam = NationalTeam(name: "nameTeam", members: [.coach("Entrenador"), .doctor("doctor"), .player("Kalidou"), .player("Mendy"),.player("Diallo"),.player("Ismaïla"),.player("Valverde")], country: "Chipre_🇨🇾" );

        var team_30: NationalTeam = NationalTeam(name: "nameTeam", members: [.coach("Entrenador"), .doctor("doctor"), .player("Vinicius"), .player("Messi"),.player("Pedri"),.player("Piqué"),.player("Valverde")], country: "Zimbabue 🇿🇼" );

        var team_31 : NationalTeam = NationalTeam(name: "nameTeam", members: [.coach("Entrenador"), .doctor("doctor"), .player("Ro-ró"), .player("Akram"),.player("Ali"),.player("Afif"),.player("Boudiaf")], country: "Albania 🇦🇱" );


        var team_32 : NationalTeam = NationalTeam(name: "nameTeam", members: [.coach("Entrenador"), .doctor("doctor"), .player("Enner"), .player("Ibarra"),.player("Piero"),.player("Gonzalo"),.player("Jeremy")], country: "Argentina 🇦🇷"  );





      

    var World_Cup :WorldCup = WorldCup(listTeams: [team_1, team_2, team_3, team_4, team_5, team_6, team_7, team_8, team_9, team_10, team_11, team_12, team_13, team_14, team_15, team_16, team_17, team_18, team_19, team_20, team_21, team_22, team_23, team_24, team_25, team_26, team_27, team_28, team_28, team_29, team_30, team_31, team_32]);

            
          
    World_Cup.generateGroup();

   

  
   
    

*/
