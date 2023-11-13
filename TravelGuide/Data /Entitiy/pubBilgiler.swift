//
//  pubBilgiler.swift
//  TravelGuide
//
//  Created by Alim Gönül on 20.10.2023.
//

import Foundation
class  Pub {
    var pub_ad : String?
    var pub_id : Int?
    var resim : String?
    
    
    init(pub_ad: String , pub_id: Int, resim : String) {
        self.pub_ad = pub_ad
        self.pub_id = pub_id
        self.resim = resim
    }
}
