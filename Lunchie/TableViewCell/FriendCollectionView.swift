//
//  FriendCollectionView.swift
//  Lunchie
//
//  Created by Hanry Ham on 01/08/19.
//  Copyright © 2019 Hanry Ham. All rights reserved.
//

import UIKit

class FriendCollectionView: UICollectionViewCell {
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    let temp = UIApplication.shared.delegate as! AppDelegate
    
    func setFriendCollection(list : ModelFriend){
        
    }
}
