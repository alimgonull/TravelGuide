//
//  plajCell.swift
//  TravelGuide
//
//  Created by Alim Gönül on 18.10.2023.
//

import UIKit

class plajCell: UITableViewCell {
    
    
    @IBOutlet weak var plajLabel: UILabel!
    @IBOutlet weak var imagePlaj: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
