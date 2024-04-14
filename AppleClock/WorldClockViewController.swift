//
//  WorldClockViewController.swift
//  AppleClock
//
//  Created by 유뇽 on 4/13/24.
//

import UIKit

class WorldClockViewController: UIViewController {

    
    @IBOutlet weak var worldClocktableView: UITableView!
    
    var list = [
        TimeZone(identifier: "Asia/Seoul")!,
        TimeZone(identifier: "Europe/Paris")!,
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(TimeZone.knownTimeZoneIdentifiers.count)
        for tz in TimeZone.knownTimeZoneIdentifiers{
            print(tz)
        }

    }

}

extension WorldClockViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: WorldClockTableViewCell.self), for: indexPath) as! WorldClockTableViewCell
        
        return cell
    }
    

}
