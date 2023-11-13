//
//  TarihiViewController.swift
//  TravelGuide
//
//  Created by Alim Gönül on 19.10.2023.
//

import UIKit

class TarihiViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    var tarihiYerlerListesi = [Tarihi]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let yer1 = Tarihi(yer_adi: "Alanya Kalesi",    yer_id: 1 , resim: "alanya_kalesi")
        let yer2 = Tarihi(yer_adi: "Apollon Tapınağı", yer_id: 2 , resim: "apollon")
        let yer3 = Tarihi(yer_adi: "Hadrian Kapısı  ", yer_id: 3 , resim: "hadrian")
        let yer4 = Tarihi(yer_adi: "Olympos Antik Kenti", yer_id: 4 , resim: "Olympos Antik Kenti")
        let yer5 = Tarihi(yer_adi: "Patara Antik kenti", yer_id: 5 , resim: "patara")
        let yer6 = Tarihi(yer_adi: "Perge Antik Kenti", yer_id: 6 , resim: "perge")
        
        tarihiYerlerListesi.append(yer1)
        tarihiYerlerListesi.append(yer2)
        tarihiYerlerListesi.append(yer3)
        tarihiYerlerListesi.append(yer4)
        tarihiYerlerListesi.append(yer5)
        tarihiYerlerListesi.append(yer6)

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tarihiYerlerListesi.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let yer = tarihiYerlerListesi[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "tarihiCell") as! TarihiCell
        
        cell.tarihiLabel.text  = "\(yer.yer_adi!)"
        cell.imageTarih.image = UIImage(named: yer.resim!)
        return cell
    }
    

}
