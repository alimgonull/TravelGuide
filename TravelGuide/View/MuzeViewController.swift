//
//  MuzeViewController.swift
//  TravelGuide
//
//  Created by Alim Gönül on 19.10.2023.
//

import UIKit

class MuzeViewController: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    var muzeYerlerListesi = [Muze]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        let yer1 = Muze(muze_ad: "Atatürk Evi Müzesi", muze_id: 1, resim: "ataturk")
        let yer2 = Muze(muze_ad: "Mevlevi Müze", muze_id: 2, resim: "mevlevi_müze")
        let yer3 = Muze(muze_ad: "Oyuncak Müzesi", muze_id: 3, resim: "oyuncak-muzesi")
        let yer4 = Muze(muze_ad: "Perge Muzesi", muze_id: 4, resim: "Perge_Muzesi")
    
        muzeYerlerListesi.append(yer1)
        muzeYerlerListesi.append(yer2)
        muzeYerlerListesi.append(yer3)
        muzeYerlerListesi.append(yer4)

        
    }
    

   
}
extension MuzeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return muzeYerlerListesi.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let yer = muzeYerlerListesi[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "muzeCell") as! muzeCell
        
        cell.muzeLabel.text = "\(yer.muze_ad!)"
        cell.imageMuze.image = UIImage(named: yer.resim!)
        return cell
    }
}
