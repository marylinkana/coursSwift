//
//  CommandesTableViewCell.swift
//  EceResto2020v2
//
//  Created by Administrateur on 03/02/2020.
//  Copyright © 2020 Gian. All rights reserved.
//

import UIKit

class CommandesTableViewCell: UITableViewCell {

    @IBOutlet var quantiteCell: UILabel!
    @IBOutlet var nomCell: UILabel!
    @IBOutlet var prixUnitCell: UILabel!
    @IBOutlet var prixTotalCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
