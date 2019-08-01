//
//  PeopleCollectionViewCell.swift
//  Lunchie
//
//  Created by Bin-15 on 01/08/19.
//  Copyright © 2019 Hanry Ham. All rights reserved.
//

import UIKit

class PeopleCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var peopleImage: UIImageView!
    
    func setImage(img: UIImage) {
        peopleImage.image = img
    }
}
