//
//  PeopleCollectionViewCell.swift
//  Lunchie
//
//  Created by Hanry Ham on 02/08/19.
//  Copyright © 2019 Hanry Ham. All rights reserved.
//

import UIKit

class PeopleCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var peopleImage: UIImageView!
    
    func setImage(img: UIImage) {
        peopleImage.image = img
    }
    
}
