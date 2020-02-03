//
//  DescriptionPlatTableViewController.swift
//  EceResto2020v2
//
//  Created by Gian on 21/01/2020.
//  Copyright © 2020 Gian. All rights reserved.
//

import UIKit

class DescriptionPlatTableViewController: UITableViewController {
    
    //connexion Bdd
    let dao = DataBase()
    
    //effet visuel flouté
    @IBOutlet var blurEffect: UIVisualEffectView!
    
    // Ajout de produits
    var quantitePlat:Int!
    @IBOutlet var viewContainer: UIView!
    @IBOutlet var quantitePlatsLabel: UILabel!
    
    var parametres2 = [String:String]()
    
    @IBOutlet var imageP: UIImageView!
    @IBOutlet var nomP: UILabel!
    @IBOutlet var prixP: UILabel!
    @IBOutlet var descriptionP: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Ajout du logo en haut de la view
        let logo = UIImage(named: "v2_logo")
        self.navigationItem.titleView = UIImageView(image:logo)
        
        // valeurs de départ
        nomP.text = parametres2["nom_plat"]
        prixP.text = parametres2["prix_plat"]
        descriptionP.text = parametres2["description_plat"]
        if let nomImg = parametres2["archive_plat"]{
            imageP.image = UIImage(named : nomImg)
        }
        
        //Boutons d'ajout ou de diminution du nombre de plats
        quantitePlat = 1
        quantitePlatsLabel.text = "\(quantitePlat)"
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    @IBAction func diminuerQuantite(_ sender: Any) {
        if quantitePlat > 0 {
            quantitePlat = quantitePlat - 1
        }
        quantitePlatsLabel.text = "\(quantitePlat!)"
    }
    
    @IBAction func ajouterQuantite(_ sender: Any) {
        quantitePlat = quantitePlat + 1
        quantitePlatsLabel.text = "\(quantitePlat!)"

    }
    
    @IBAction func ajoutFavoris(_ sender: Any) {
    }
    
    @IBAction func commander(_ sender: Any) {
        // viewContainer.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        blurEffect.frame = view.frame
        // effet flout au clic sur le bouton commander
        self.view.addSubview(blurEffect)
        viewContainer.center = view.center
        self.view.addSubview(viewContainer)
    }
    
    @IBAction func validerCommande(_ sender: Any) {
        blurEffect.removeFromSuperview()
        viewContainer.removeFromSuperview()
        
        let nomPlat = nomP.text
        let prixPlat = prixP.text
        if let quantite = quantitePlat {
            //on insert les donnée dans la table commande de la base de donnée
            let insertCommande = "insert into commande (nom_plat, prix_unit, quantite_plat) value ('\(nomPlat!)','\(prixPlat!)','\(quantite)'"
            dao.executerInsert(insertCommande)
        }
        
        let dataCommande = dao.executerInsert("select * from commande")
        print(dataCommande)
    }
    
    
    // MARK: - Table view data source
    /*
     override func numberOfSections(in tableView: UITableView) -> Int {
     // #warning Incomplete implementation, return the number of sections
     return 1
     }
     
     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     // #warning Incomplete implementation, return the number of rows
     return 3
     }
     */
}
