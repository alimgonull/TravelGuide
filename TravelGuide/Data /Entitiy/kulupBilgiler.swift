//
//  kulupBilgiler.swift
//  TravelGuide
//
//  Created by Alim Gönül on 20.10.2023.
//

import Foundation
class Kulup {
    var kulup_ad : String?
    var kulup_id : Int?
    var resim : String?
    
    init(kulup_ad: String , kulup_id: Int , resim : String) {
        self.kulup_ad = kulup_ad
        self.kulup_id = kulup_id
        self.resim = resim 
    }
    
}
