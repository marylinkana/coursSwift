//
//  CommandesViewController.swift
//  EceResto2020v2
//
//  Created by Administrateur on 03/02/2020.
//  Copyright © 2020 Gian. All rights reserved.
//

import UIKit

class CommandesViewController: UIViewController {
    
    var dao = DataBase()
    
    var arrayPlatCommandes = [[String:String]]()
    
    @IBOutlet var tableViewCommandes: UITableView!
    @IBOutlet var mntantTotalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let dataCommande = dao.executerSelect("select * from commande order by id_commande desc") as! [[String:String]]
        print(arrayPlatCommandes)
        //print(dataCommande!)
    }
    
    @IBAction func passerCommande(_ sender: Any) {
    }
}
    
    extension CommandesViewController{
        func nombreDeSections(un tableView: UITableView) -> Int{
            return 1
        }
        
        func tableView(_ tableView: UITableView, numbresOfRowsInSection section: Int) -> Int{
            return arrayPlatCommandes.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellCommandes", for: indexPath) as! CommandesTableViewCell
            
            cell.nomCell.text = arrayPlatCommandes[indexPath.row]["nom_plat"]
            cell.quantiteCell.text = arrayPlatCommandes[indexPath.row]["quantite_plat"]
            cell.prixUnitCell.text = arrayPlatCommandes[indexPath.row]["prix_plat"]
            
            let semitot = cell.calculSousTotal()
            cell.prixTotalCell.text = "\(semitot)"

            return cell
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

