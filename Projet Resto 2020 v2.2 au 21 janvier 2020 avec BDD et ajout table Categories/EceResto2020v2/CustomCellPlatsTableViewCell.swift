//
//  CustomCellPlatsTableViewCell.swift
//  EceResto2020v2
//
//  Created by Gian on 20/01/2020.
//  Copyright © 2020 Gian. All rights reserved.
//

import UIKit

class CustomCellPlatsTableViewCell: UITableViewCell {

    @IBOutlet var imageCell: UIImageView!
    
    @IBOutlet var titreCellP: UILabel!
    
    @IBOutlet var descriptionCellP: UILabel!
    
    @IBOutlet var prixCellP: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
