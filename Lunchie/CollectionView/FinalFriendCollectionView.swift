//
//  FinalFriendCollectionView.swift
//  Lunchie
//
//  Created by Hanry Ham on 02/08/19.
//  Copyright © 2019 Hanry Ham. All rights reserved.
//

import UIKit

class FinalFriendCollectionView: UICollectionViewCell {
    @IBOutlet weak var finalProfilePicture: UIImageView!
    @IBOutlet weak var finalNameLabel: UILabel!
    
    func setImage(img: UIImage) {
        finalProfilePicture.image = img
    }
}
