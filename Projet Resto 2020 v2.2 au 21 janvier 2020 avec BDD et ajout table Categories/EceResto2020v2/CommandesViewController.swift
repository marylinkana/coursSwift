//
//  CommandesViewController.swift
//  EceResto2020v2
//
//  Created by Administrateur on 03/02/2020.
//  Copyright © 2020 Gian. All rights reserved.
//

import UIKit

class CommandesViewController: UIViewController {

    var arraysPlatCommandes = [[String:String]]()
    
    @IBOutlet var tableViewCommandes: UITableView!
    @IBOutlet var mntantTotalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func passerCommande(_ sender: Any) {
    }
}
    
    extension CommandesViewController{
        func nombreDeSections(un tableView: UITableView) -> Int{
            return 1
        }
        
        func tableView(_ tableView: UITableView, numbresOfRowsInSection section: Int) -> Int{
            return 10
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellCommandes", for: indexPath) as! CommandesTableViewCell
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

