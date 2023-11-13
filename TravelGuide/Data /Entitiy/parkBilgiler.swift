//
//  parkBilgiler.swift
//  TravelGuide
//
//  Created by Alim Gönül on 20.10.2023.
//

import Foundation
class Park {
    var park_ad : String?
    var park_id : Int?
    var resim : String?
    
    init(park_ad: String , park_id: Int, resim : String) {
        self.park_ad = park_ad
        self.park_id = park_id
        self.resim = resim 
    }
}
