//
//  plajBilgiler.swift
//  TravelGuide
//
//  Created by Alim Gönül on 20.10.2023.
//

import Foundation
class Plaj {
    var plaj_ad : String?
    var plaj_id : Int?
    var resim : String?
    
    init(plaj_ad: String , plaj_id: Int , resim : String) {
        self.plaj_ad = plaj_ad
        self.plaj_id = plaj_id
        self.resim = resim
        
    }
}
