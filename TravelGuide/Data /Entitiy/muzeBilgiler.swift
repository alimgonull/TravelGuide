//
//  muzeBilgiler.swift
//  TravelGuide
//
//  Created by Alim Gönül on 20.10.2023.
//

import Foundation
class Muze {
    var muze_ad : String?
    var muze_id : Int?
    var resim : String?
    
    init(muze_ad: String , muze_id: Int, resim : String) {
        self.muze_ad = muze_ad
        self.muze_id = muze_id
        self.resim = resim
        
    }
}
