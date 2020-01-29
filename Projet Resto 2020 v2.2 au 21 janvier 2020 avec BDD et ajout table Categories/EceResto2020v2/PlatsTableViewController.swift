//
//  PlatsTableViewController.swift
//  EceResto2020v2
//
//  Created by Gian on 13/01/2020.
//  Copyright © 2020 Gian. All rights reserved.
//

import UIKit

class PlatsTableViewController: UITableViewController {

    var arrayPlats = [[String:String]]()
    var parametre1 = [String:String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Afficher la navbar de la fonction confNavBar
        confNavBar()
                
        // Accès à la table Plats
        if let idCategorie = parametre1["id_categorie"]{
            //        arrayPlats = DataBase().executerSelect("SELECT * FROM plats_nourriture WHERE id_categorie = \(idCategorie)") as! [[String : String]]
            let query = "SELECT * FROM plats_nourriture WHERE id_categorie = \(idCategorie)"
            print (query)
            arrayPlats = DataBase().executerSelect(query) as! [[String:String]]
        }
        
        
//        let plat1 = ["prix_plat" : "10.00", "nom_plat" : "Salade", "id_categorie" : "1", "id_plat" : "1", "description_plat" : "Salade avec sauce vinaigrette", "archive_plat" : "salade1.jpg"]
//        
//        arrayPlats = [plat1,plat1,plat1,plat1,plat1,plat1,plat1,plat1,plat1,plat1,plat1,plat1]

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    func confNavBar(){
        //Affichage d'un bandeau image en haut de la view
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "v2_barre_titre"), for: .default)
        
        //Affichage d'un logo logo
        let logo = UIImage(named: "v2_logo")
        self.navigationItem.titleView = UIImageView(image:logo)
        
        // Bouton de retour en arrière
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title:" ", style:.plain, target:nil, action:nil)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Taille du tableau en fonction du nombre de produits de la catégorie concernée
        return arrayPlats.count
    }

        // Fonction pour faire la liaison entre la view et le fichier  CustomCellPlatsTableViewCell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellPlats", for: indexPath) as! CustomCellPlatsTableViewCell

        // Afficher les données des plats depuis le tableau arrayPlats
        let nomP = arrayPlats[indexPath.row]["nom_plat"]
        let descriptionP = arrayPlats[indexPath.row]["description_plat"]
        let prixP = arrayPlats[indexPath.row]["prix_plat"]
        
        if let archiveP = arrayPlats[indexPath.row]["archive_plat"] {
        cell.imageCell.image = UIImage(named : archiveP)
        }
        
        cell.titreCellP.text = nomP
        cell.descriptionCellP.text = descriptionP
        cell.prixCellP.text = prixP

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "plats2description"{
            
            if let indexPath = tableView.indexPathForSelectedRow{
                let objetPlat = self.arrayPlats[indexPath.row]
                //segue vers DescriptionPlatTableViewController
                let objVDescription = segue.destination as! DescriptionPlatTableViewController
                objVDescription.parametres2 = objetPlat
            }

        }
    }
    

}
