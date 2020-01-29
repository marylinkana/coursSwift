//
//  DescriptionPlatTableViewController.swift
//  EceResto2020v2
//
//  Created by Gian on 21/01/2020.
//  Copyright © 2020 Gian. All rights reserved.
//

import UIKit

class DescriptionPlatTableViewController: UITableViewController {
    
    // ajoug de produit
    var quantitePlat:Int!
    @IBOutlet var viewContainer: UIView!
    @IBOutlet var quantitePlatsLabel: UILabel!
    @IBAction func diminuerQuantite(_ sender: Any) {
    }
    @IBAction func augmenterQuantite(_ sender: Any) {
    }
    
    var parametres2 = [String:String]()
    
    @IBOutlet var imageP: UIImageView!
    @IBOutlet var nomP: UILabel!
    @IBOutlet var prixP: UILabel!
    @IBOutlet var descP: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let logo = UIImage(named: "v2_logo")
        self.navigationItem.titleView = UIImageView(image:logo)
        
        quantitePlat = 1
        quantitePlatsLabel.text = "\(quantitePlat)"
        
        
        //valeur de départ
        nomP.text = parametres2["nom_plat"]
        prixP.text = parametres2["prix_plat"]
        descP.text = parametres2["desc_plat"]
        if let nomImg = parametres2["archive_plat"]{
            imageP.image = UIImage(named : nomImg)
        }
        //imageP.image = UIImage(named: archiveP)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    @IBAction func ajoutFavoris(_ sender: Any) {
    }
    
    @IBAction func commander(_ sender: Any) {
        //viewContainer.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        viewContainer.center = view.center
        self.view.addSubview(viewContainer)
    }
    /*
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }*/

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
