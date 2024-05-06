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
        TimeZone(identifier: "America/New_York")!,
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension WorldClockViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: WorldClockTableViewCell.self), for: indexPath) as! WorldClockTableViewCell
        
        let target = list[indexPath.row]
        cell.timeLable.text = target.currentTime
        cell.timePeriodLable.text = target.timePeriod
        cell.timeZoneLabel.text = target.city
        cell.timeoffsetLabel.text = target.timeOffset
        
        return cell
    }
    

}
