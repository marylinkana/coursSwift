//
//  DescriptionPlatTableViewController.swift
//  EceResto2020v2
//
//  Created by Gian on 21/01/2020.
//  Copyright © 2020 Gian. All rights reserved.
//

import UIKit

class DescriptionPlatTableViewController: UITableViewController {
    
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
    }
    
    @IBAction func ajouterQuantite(_ sender: Any) {
    }
    
    @IBAction func ajoutFavoris(_ sender: Any) {
    }
    
    @IBAction func commander(_ sender: Any) {
        // viewContainer.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        viewContainer.center = view.center
        self.view.addSubview(viewContainer)
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
