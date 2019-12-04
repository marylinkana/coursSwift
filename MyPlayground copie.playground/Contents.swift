import UIKit

var str = "Hello, playground"

// Déclaration implicite
var myString = "bonjour"
var myInt = 10
var myDouble = 7.77
var myBoulean = true

// Déclaration explicite
var myString2:String = "Bonjour mon bo...k"

// modification de variable
myInt = 7

// Déclaration boucle
for i in 0 ... 9{
    myInt += i
    print("la variable myInt contient ",myInt," puis ")
}

// Affichage
var salutation = "Salut"//variable modifiable
let nomDylan = "Dylan"
var soubriq = "mon boug"

print(salutation+" "+nomDylan+" "+soubriq+" a " ,myInt, " ans. ")//des plus(+) pour les char et des virgule(,) pour les int

"Prix total : \(Double(myInt) * myDouble) €"

var commande: String?

//Attribution d'une valeur à la variable
commande = "twingo"

//Syntaxe conseillée : if - let
if let commande = commande{
    commande
}
else{
    "Aucune commande"
}

// concaténation dans une variable
var concat = nomDylan+" "+soubriq
print (concat)

// interpolation
var concatext = "mon pot \(nomDylan) a pour soubriquet \(soubriq) et il l'apprécis beaucoup."

var concatInt = nomDylan + " a " ;String(5*5); " ans. "
print(concatext)

// conversion d'un float en string
let string2 = NSString(format: "%0.2f", 7.77)

let score2 = ("25" as NSString).intValue
score2

//test d'une chaine vide
var vide = "pas vide"
vide.isEmpty

// switch
let niveauVent = 9

switch niveauVent {
    case 1...3:
        print("C'est plutôt calme dehors")
    case 4...6:
        print("prend ton parapluie")
    case 7...9:
        print("Ne tente même pas de sortir")
    default:
        break;
}

// déclaration d'un Tableau
var careCommandes = ["toyota", "bmw", "mercedece", "fiat"]
let careCommande = ["toyota", "bmw", "mercedece", "fiat"]


// déclaration d'un tableau vide
let myArray:[String]

// récupération du premier élément
let firstOne = [0]

// récupération du dernier élément
let lastOne = careCommandes[careCommandes.count-1]

//Ajout d'un élément en fin d'un tableau
careCommandes.insert("jeep", at: 1)

//insertion à un index précis
careCommandes.append("férari")

//afficher tous les élément d'un tableau avec un for
for i in 0 ... careCommandes.count-1 {
    print(careCommandes[i])
}

//Suppression du n ième élément ici le 5ième
careCommandes.remove(at: 2)

//Suppression du dernier élément
careCommandes.removeLast()

//Suppression de tous les éléments
//careCommandes.removeAll(keepingCapacity: false)

//Tableau associatif : dictionnaire
var associativeArray = ["Voiture1":"toyota", "Voiture2":"bmw", "Voiture3":"mercedece", "Voiture4":"fiat"]

// Ajout d'un élément
associativeArray["voiture5"] = "férari"

//Modification d'un élément
associativeArray["voiture5"] = "jagoire"

//Suppression d'un élément
associativeArray["voiture5"] = nil

// afficher tous les élément d'un tableau avec un foreach
associativeArray

for oneElement in associativeArray {
    oneElement
}

for (key, value) in associativeArray{
    "\(key) correspond à la marque \(value)"
}

//déclaration d'une énumération
enum CarType : String{
    case ferary = "bugati", toyota = "corola", dassia = "sundaro"
}

//Structure d'un film
struct Car {
    var country: String
    var modele: CarType
}

// Déclaration d'un film en utilisant la structure
var car1 = Car(country: "Cameroun", modele: .toyota)

//traitement de différent cas grace au controle de switch/case
switch car1.modele {
    case .toyota :
        "le \(car1.country) à pour modele de Toyota : la \(car1.modele.rawValue)"
    case .dassia :
        "le \(car1.country) à pour modele de Dassia : la \(car1.modele.rawValue)"
    default :
        "le \(car1.country) à pour modele de Ferary : la \(car1.modele.rawValue)"
}

//Tuple
var strn = "bonjour"
var num = 7000

//Déclaration d'un tuple
let monTuple = (strn, num, 11787, "mon b...")
let event = (1998, "coupe du monde")

//Récupération des valeur via index
monTuple.0
monTuple.1

//utilisation d'une constante étant elle-meme tuplt
let (year, title) = event

//récupération des valeur
year
title

//tuplt typé
let eventType:(year:Int, title:String) = (1998, "coupe du monde")

//récupération des valeurs du tuple a travers le type de donnée
eventType.year
eventType.title

//fonction qui renvoie un tuple
func currentEvent() -> (year:Int, Title:String) {
    return (1998, "coupe du monde")
}

//Récupération des valeur via une fonction
currentEvent().year
currentEvent().Title

//tableau de tuplt
let eventArray = [("coupe du monde",1998,1), ("coupe du monde",2018,2), ("coupe du monde",2022,3)]

//parcour du tableau et traitement des valeurs
for event in eventArray{
    switch event {
    case ("Coupe du monde",1998,1):
        print("La france gagne la coupe du monde");
    case ("Coupe du monde",2018,2):
        print("La france gagne de nouveau la coupe du monde");
    case ("Coupe du monde",2022,3):
        print("La france va gagner la coupe du monde");
    default:
        print("Evènement inconnu");
    }
    print("On est les champion");
}

var n1 = 10
var n2 = 25

var temp = n1
n1 = n2
n2 = temp

/* TP CALCULATRICE */

var a = 10;
var b = 5;

var add = a + b;
print(add);

var sous = a - b;
print(sous);

var div = a / b;
print(div);

var mult = a * b;
print(mult);

var c = 2.5;

var cast = a * Int(c);
print(cast);

var altr = 6;
//génère un nombre aléatoire a prtir de la valeur passé en paramettre
Int(arc4random_uniform(UInt32(altr)));

//mettre des dés dans un tableau
let des:[String] = ["⚀","⚁","⚂","⚃","⚄","⚅"];

//afficher les dés de façons alléatoire
print(des[Int(arc4random_uniform(UInt32(des.count)))]);

//mettre des dés dans un tableau
let liste:[String] = ["1","2","3","4","5","6"];

//afficher les élément du tableau de façons alléatoire
print(liste.randomElement());


