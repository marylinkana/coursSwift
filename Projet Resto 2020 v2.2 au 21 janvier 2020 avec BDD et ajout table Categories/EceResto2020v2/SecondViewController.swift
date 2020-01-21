//
//  SecondViewController.swift
//  EceResto2020v2
//
//  Created by Gian on 08/01/2020.
//  Copyright © 2020 Gian. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var arrayCategories = [[String:String]]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Connexion à la bdd sqlite
        DataBase.checkAndCreateDatabase()
        
        // Accès à la table Categories
        arrayCategories = DataBase().executerSelect("SELECT * FROM categorie_plats") as! [[String : String]]
        
        //let c1 = ["idc":"1","nomc":"Entrées"]
        //let c2 = ["idc":"2","nomc":"Plats"]
        //let c3 = ["idc":"3","nomc":"Soupes"]
        //let c4 = ["idc":"4","nomc":"Desserts"]
        //let c5 = ["idc":"5","nomc":"Boissons"]

       // arrayCategories = [c1, c2, c3, c4, c5]
        
    }
    
    func nombreDeSections(in tableView: UITableView) -> Int{
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCategories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellule = tableView.dequeueReusableCell(withIdentifier: "cellCategorie", for: indexPath) as! CategorieTableViewCell
        let nomCategorie = arrayCategories[indexPath.row]["nom_categorie"]
        
        // cellule.textLabel?.text = nomCategorie
        cellule.nomCatCell.text = nomCategorie
        
        return cellule
    }
}
