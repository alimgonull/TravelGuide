//
//  ParkCell.swift
//  TravelGuide
//
//  Created by Alim Gönül on 18.10.2023.
//

import UIKit

class ParkCell: UITableViewCell {
    
    @IBOutlet weak var parkLabel: UILabel!
    @IBOutlet weak var imagePark: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
