//
//  ViewController2.swift
//  Lunchie
//
//  Created by Hanry Ham on 29/07/19.
//  Copyright © 2019 Hanry Ham. All rights reserved.
//

import UIKit

class HistoryController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var segmentedOutlet: UISegmentedControl!
    @IBOutlet weak var ongoingTableView: UITableView!
    
    let ongoingData: [ModelHistoryMakanan] = [
        ModelHistoryMakanan(_nama: "Hanry Ham", _makanan: "Bakso", _status: 0)
    ]
    let previousData: [ModelHistoryMakanan] = [
        ModelHistoryMakanan(_nama: "Handoko Ham", _makanan: "Mie Ayam", _status: -1),
        ModelHistoryMakanan(_nama: "Keris Tapi", _makanan: "Nasi Goreng", _status: 1),
        ModelHistoryMakanan(_nama: "Widodo", _makanan: "Soto", _status: -1)
    ]
    let identifierView: String = "HistoryCell"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if  segmentedOutlet.selectedSegmentIndex == 0 {
            return self.ongoingData.count
        } else {
            return self.previousData.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TableViewCellHistory = self.ongoingTableView.dequeueReusableCell(withIdentifier: identifierView) as! TableViewCellHistory
        if segmentedOutlet.selectedSegmentIndex == 0 {
            cell.name.text = self.ongoingData[indexPath.row].nama
            cell.makanan.text = self.ongoingData[indexPath.row].makanan
            if ongoingData[indexPath.row].status == 0 {
                cell.activityStatus.isHidden = true
            } else {
                cell.buttonJoin.isHidden = true
                cell.buttonDecline.isHidden = true
                if ongoingData[indexPath.row].status == -1 {
                    cell.activityStatus.text = "Declined"
                } else {
                    cell.activityStatus.text = "Accepted"
                }
            }
            ongoingTableView.rowHeight = 65
        } else {
            cell.name.text = self.previousData[indexPath.row].nama
            cell.makanan.text = self.previousData[indexPath.row].makanan
            if previousData[indexPath.row].status == 0 {
                cell.activityStatus.isHidden = true
            } else {
                cell.buttonJoin.isHidden = true
                cell.buttonDecline.isHidden = true
                if previousData[indexPath.row].status == -1 {
                    cell.activityStatus.text = "Declined"
                } else {
                    cell.activityStatus.text = "Accepted"
                }
            }
            ongoingTableView.rowHeight = 65
        }
        
        return cell
    }
    
    @IBAction func segmentedAction(_ sender: Any) {
        ongoingTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ongoingTableView.delegate = self
        ongoingTableView.dataSource = self
    }

}
