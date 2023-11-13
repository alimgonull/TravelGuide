//
//  pubCell.swift
//  TravelGuide
//
//  Created by Alim Gönül on 18.10.2023.
//

import UIKit

class pubCell: UITableViewCell {

    
    @IBOutlet weak var pubLabel: UILabel!
    @IBOutlet weak var imagePub: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
