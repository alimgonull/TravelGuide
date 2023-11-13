//
//  PubViewController.swift
//  TravelGuide
//
//  Created by Alim Gönül on 19.10.2023.
//

import UIKit

class PubViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var pubYerlerListesi = [Pub]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        let pub1 = Pub(pub_ad: "Tudors Arena", pub_id: 1, resim: "6")
        let pub2 = Pub(pub_ad: "Holly Stone", pub_id: 2, resim: "resim1")
        let pub3 = Pub(pub_ad: "Figma Arena ", pub_id: 3, resim: "resim2")
        let pub4 = Pub(pub_ad: "Soho ", pub_id: 4, resim: "soho")
        
        pubYerlerListesi.append(pub1)
        pubYerlerListesi.append(pub2)
        pubYerlerListesi.append(pub3)
        pubYerlerListesi.append(pub4)
        
    }
    
    

}
extension PubViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pubYerlerListesi.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let yer = pubYerlerListesi[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "pubCell") as! pubCell
        
        cell.pubLabel.text = "\(yer.pub_ad!)"
        cell.imagePub.image = UIImage(named: yer.resim!)
        return cell
    }
    
}
