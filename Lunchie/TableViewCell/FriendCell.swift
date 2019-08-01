//
//  FriendCell.swift
//  Lunchie
//
//  Created by Hanry Ham on 01/08/19.
//  Copyright © 2019 Hanry Ham. All rights reserved.
//

import UIKit

class FriendCell: UITableViewCell {

    @IBOutlet weak var friendName: UILabel!
    @IBOutlet weak var friendImageView: UIImageView!
    @IBOutlet weak var addButton: UIButton!
    //var friends : [ModelFriend] = []
    let temp = UIApplication.shared.delegate as! AppDelegate
    
    @IBAction func addFriend(_ sender: UIButton) {
        guard let friendName = friendName.text else {return}
        guard let buttonLabel = addButton.titleLabel?.text else {return}
        
        if buttonLabel == "Add"{
            addButton.setTitle("Delete", for: .normal)
            temp.listFriend.append(ModelFriend(image: friendImageView.image!, name: friendName))
        }else{
            addButton.setTitle("Add", for: .normal)
        }
    }
    
    func setFriendList(list : ModelFriend){
        friendImageView.image = list.image
        friendName.text = list.name
    }
}
