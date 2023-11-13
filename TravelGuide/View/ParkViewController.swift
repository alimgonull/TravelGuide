//
//  ParkViewController.swift
//  TravelGuide
//
//  Created by Alim Gönül on 19.10.2023.
//

import UIKit

class ParkViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var parkYerlerListesi = [Park]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        let park1 = Park(park_ad: "Karaalioğlu Parkı", park_id: 1, resim: "karaalioglu")
        let park2 = Park(park_ad: "Düden Parkı", park_id: 2, resim: "duden")
        let park3 = Park(park_ad: "Akvaryum ", park_id: 3, resim: "akvaryum")
        let park4 = Park(park_ad: "Kursunlu Şelalesi", park_id: 4, resim: "kursunlu")
        let park5 = Park(park_ad: "Marina", park_id: 5, resim: "marina")

        parkYerlerListesi.append(park1)
        parkYerlerListesi.append(park2)
        parkYerlerListesi.append(park3)
        parkYerlerListesi.append(park4)
        parkYerlerListesi.append(park5)

    }
    
    
}
extension ParkViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return parkYerlerListesi.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let yer = parkYerlerListesi[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "parkCell") as! ParkCell
        
        cell.parkLabel.text = "\(yer.park_ad!)"
        cell.imagePark.image = UIImage(named: yer.resim!)
        return cell
    }
}
