//
//  WorldClockTableViewCell.swift
//  AppleClock
//
//  Created by 유뇽 on 4/14/24.
//

import UIKit

class WorldClockTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var timeoffsetLabel: UILabel!
    
    @IBOutlet weak var timeZoneLabel: UILabel!
    
    @IBOutlet weak var timePeriodLable: UILabel!
    
    @IBOutlet weak var timeLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
