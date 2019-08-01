//
//  ViewController.swift
//  Lunchie
//
//  Created by Hanry Ham on 01/08/19.
//  Copyright © 2019 Hanry Ham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var commandLabel: UILabel!
    @IBOutlet weak var greetingLabel: UILabel!
    var friends : [ModelFriend] = []
    
    @IBAction func confirmButton(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let temp = UIApplication.shared.delegate as! AppDelegate
        friends = createArray()
        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.rowHeight = 125
        titleLabel.text = "Find Friends"
        greetingLabel.text = "Hello \(temp.userActive.name)"
        commandLabel.text = "Please select your friend to lunch with"
        
    }
    
    func createArray() -> [ModelFriend]{
        var tempFriends : [ModelFriend] = []
        
        let friend1 = ModelFriend(image : UIImage(named: "lunch")!, name: "Hanry")
        let friend2 = ModelFriend(image : UIImage(named: "lunch")!, name: "Ade")
        let friend3 = ModelFriend(image : UIImage(named: "lunch")!, name: "Alfi")
        let friend4 = ModelFriend(image : UIImage(named: "lunch")!, name: "Chico")
        let friend5 = ModelFriend(image : UIImage(named: "lunch")!, name: "Lasmi")
        
        tempFriends.append(friend1)
        tempFriends.append(friend2)
        tempFriends.append(friend3)
        tempFriends.append(friend4)
        tempFriends.append(friend5)
        
        return tempFriends
        
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let friend = friends[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell") as! FriendCell
        cell.setFriendList(list: friend)
        return cell
    }
    
    
}
