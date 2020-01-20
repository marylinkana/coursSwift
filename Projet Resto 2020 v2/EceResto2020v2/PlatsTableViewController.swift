//
//  PlatsTableViewController.swift
//  EceResto2020v2
//
//  Created by Administrateur on 13/01/2020.
//  Copyright © 2020 Gian. All rights reserved.
//

import UIKit

class PlatsTableViewController: UITableViewController {

    var arrayPlats = [[String:String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        confNavBar()
        
        let plat1 = ["prix_plat":"10","nom_plat":"Salade", "id_cat":"1", "id_plat":"1", "desc_plat":"Salade au caviar", "archive_plat":"salade1.jpeg"]
        
        let plat2 = ["prix":"10","nom_plat":"Salade", "id_cat":"1", "id_plat":"1", "desc_plat":"Salade d'avocat", "archive_plat":"salade1.jpeg"]
        
        let plat3 = ["prix":"10","nom_plat":"Salade", "id_cat":"1", "id_plat":"1", "desc_plat":"Salade de crevette", "archive_plat":"salade1.jpeg"]
        
    arrayPlats = [plat1,plat2,plat3,plat3,plat1,plat2,plat3,plat3,plat1,plat2,plat3,plat3]
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    func confNavBar(){
       //Affiche d'une barre de navigation
    self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "v2_barre_titre"), for: .default)
        
        //affiche un logo
        let logo = UIImage(named: "v2_logo")
        self.navigationItem.titleView = UIImageView(image:logo)
        
        //boutton de retour en arière
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "", style:.plain, target: nil, action: nil)
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
        // taille du tableau en fonction du nombre de produit
        return arrayPlats.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellPlats", for: indexPath) as! CustomCellPlatsTableViewCell

        // afficher les infos sur le plats depuis le tableau arrayPlats
        let nomP = arrayPlats[indexPath.row]["nom_plat"]
        let descP = arrayPlats[indexPath.row]["desc_plat"]
        let prixP = arrayPlats[indexPath.row]["prix_plat"]
        let archiveP = arrayPlats[indexPath.row]["archive_plat"]{
            cell.archiveCellP.image = UIImage(named: archiveP)
        }

        cell.titreCellP.text = nomP
        cell.descCellP.text = descP
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
