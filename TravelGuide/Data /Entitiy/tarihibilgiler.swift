//
//  tarihibilgiler.swift
//  TravelGuide
//
//  Created by Alim Gönül on 20.10.2023.
//

import Foundation

class Tarihi{
    var yer_adi : String?
    var yer_id  : Int?
    var resim : String?
    
    
    init(yer_adi: String , yer_id: Int , resim : String ) {
        self.yer_adi = yer_adi
        self.yer_id = yer_id
        self.resim = resim
    }
}
