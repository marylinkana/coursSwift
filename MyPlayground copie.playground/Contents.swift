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

//afficher tous les élément d'un tableau
for i in 0 ... careCommandes.count-1 {
    print(careCommandes[i])
}

//Suppression du n ième élément ici le 5ième
careCommandes.remove(at: 2)

//Suppression du dernier élément
careCommandes.removeLast()

//Suppression de tous les éléments
//careCommandes.removeAll(keepingCapacity: false)

//Tableau associatif
var associativeArray = ["Voiture1":"toyota", "Voiture2":"bmw", "Voiture3":"mercedece", "Voiture4":"fiat"]

for oneElement in associativeArray {
    oneElement
}
