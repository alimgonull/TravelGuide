//
//  PlajViewController.swift
//  TravelGuide
//
//  Created by Alim Gönül on 19.10.2023.
//

import UIKit

class PlajViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var plajYerlerListesi = [Plaj]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        let p1 = Plaj(plaj_ad: "Adrasan Koyu", plaj_id: 1, resim: "adrasan")
        let p2 = Plaj(plaj_ad: "Çıralı Sahili", plaj_id: 2, resim: "cirali")
        let p3 = Plaj(plaj_ad: "Kaputas Plajı", plaj_id: 3, resim: "kaputas")
        let p4 = Plaj(plaj_ad: "Kleopatra Plajı", plaj_id: 4, resim: "Kleopatra")
        let p5 = Plaj(plaj_ad: "Konyaaltı Sahili", plaj_id: 5, resim: "konyaalti")
        let p6 = Plaj(plaj_ad: "Phaselis Koyu", plaj_id: 6, resim: "phaselis_koyu")

        plajYerlerListesi.append(p1)
        plajYerlerListesi.append(p2)
        plajYerlerListesi.append(p3)
        plajYerlerListesi.append(p4)
        plajYerlerListesi.append(p5)
        plajYerlerListesi.append(p6)

        
    }
    

}
extension PlajViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return plajYerlerListesi.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let yer = plajYerlerListesi[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "plajCell") as! plajCell
        
        cell.plajLabel.text = "\(yer.plaj_ad!)"
        cell.imagePlaj.image = UIImage(named: yer.resim!)

        return  cell
    }
}
