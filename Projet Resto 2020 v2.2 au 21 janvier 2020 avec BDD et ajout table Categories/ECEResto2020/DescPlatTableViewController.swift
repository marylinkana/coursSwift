//
//  DescPlatTableViewController.swift
//  ECEResto2020
//
//  Created by Administrateur on 21/01/2020.
//  Copyright © 2020 Dylan Luchmun. All rights reserved.
//

import UIKit

class DescPlatTableViewController: UITableViewController {

    var qtePlat:Int!
    @IBOutlet var viewContainer: UIView!
    @IBOutlet var lblQtePlat: UILabel!
    
    @IBAction func diminuerQte(_ sender: Any) {
    }
    @IBAction func augmenterQte(_ sender: Any) {
    }
    
    var arrayPlats2 = [[String:String]]()
    var parametre2 = [String:String]()
    
    @IBOutlet var imageP: UIImageView!
    @IBOutlet var nomP: UILabel!
    @IBOutlet var prixP: UILabel!
    @IBOutlet var descP: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let logo = UIImage(named : "v2_logo")
        self.navigationItem.titleView = UIImageView(image:logo)

        qtePlat = 1
        lblQtePlat.text = "\(qtePlat)"
        
        nomP.text = parametre2["nom_plat"]
        prixP.text = parametre2["prix_plat"]
        descP.text = parametre2["description_plat"]
        if let nomImg = parametre2["archive_plat"]{
            imageP.image = UIImage(named : nomImg)
        }
        
        /*
        if let idCategorie = parametre2["id_categorie"]{
        
        let query = "SELECT * FROM plats_nourriture WHERE id_categorie = \(idCategorie)"
        print(query)
        arrayPlats2 = DataBase().executerSelect(query) as! [[String : String]]
        }
        

         let nomP = arrayPlats2[indexPath.row]["nom_plat"]
        let descP = arrayPlats2[indexPath.row]["description_plat"]
        let prixP = arrayPlats2[indexPath.row]["prix_plat"]
        
        if let imgP = arrayPlats2[indexPath.row]["archive_plat"] {
        cell.imageCell.image = UIImage(named: imgP)
        }
        
        */
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    @IBAction func ajoutFav(_ sender: Any) {
    }
    
    @IBAction func commander(_ sender: Any) {
        //viewContainer.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        self.view.addSubview(viewContainer)
        viewContainer.center = view.center
    }
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
