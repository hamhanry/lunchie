//
//  TableViewCellHistory.swift
//  Lunchie
//
//  Created by Hanry Ham on 01/08/19.
//  Copyright © 2019 Hanry Ham. All rights reserved.
//

//
//  HistoryTVC.swift
//  Lunch History
//
//  Created by Bin-15 on 01/08/19.
//  Copyright © 2019 One Heart. All rights reserved.
//

import UIKit
import Foundation

class TableViewCellHistory: UITableViewCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var makanan: UILabel!
    @IBOutlet weak var activityStatus: UILabel!
    @IBOutlet weak var buttonDecline: UIButton!
    @IBOutlet weak var buttonJoin: UIButton!
    @IBAction func decline(_ sender: Any) {
    }
    @IBAction func join(_ sender: Any) {
    }
    /*
     @IBOutlet weak var name: UILabel!
     @IBOutlet weak var makanan: UILabel!
     @IBOutlet weak var activityStatus: UILabel!
     @IBOutlet weak var buttonDecline: UIButton!
     @IBOutlet weak var buttonJoin: UIButton!
     
     @IBAction func decline(_ sender: Any) {
     
     }
     @IBAction func join(_ sender: Any) {
     
     }*/
}
