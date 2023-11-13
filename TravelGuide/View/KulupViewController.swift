//
//  KulupViewController.swift
//  TravelGuide
//
//  Created by Alim Gönül on 19.10.2023.
//

import UIKit

class KulupViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var kulupYerlerListesi = [Kulup]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let k1 = Kulup(kulup_ad: "İnferno", kulup_id: 1, resim: "6")
        let k2 = Kulup(kulup_ad: "Holly Stone", kulup_id: 2, resim: "resim1")
        let k3 = Kulup(kulup_ad: "Beat Club", kulup_id: 3, resim: "resim2")
        let k4 = Kulup(kulup_ad: "Belel Club", kulup_id: 4, resim: "soho")
        
        kulupYerlerListesi.append(k1)
        kulupYerlerListesi.append(k2)
        kulupYerlerListesi.append(k3)
        kulupYerlerListesi.append(k4)

        
    }
    
}
extension KulupViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kulupYerlerListesi.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let yer = kulupYerlerListesi[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "kulupCell") as! kulupCell
        
        cell.kulupLabel.text = "\(yer.kulup_ad!)"
        cell.imageKulup.image = UIImage(named: yer.resim!)
        return cell
    }
}
