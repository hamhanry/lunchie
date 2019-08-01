//
//  ModelFriend.swift
//  Lunchie
//
//  Created by Hanry Ham on 30/07/19.
//  Copyright © 2019 Hanry Ham. All rights reserved.
//

import Foundation
import UIKit

class ModelUser{
    var name = ""
    var profilePic = UIImage.init(named: "lunch")
    
    init(name:String, profilePic:UIImage){
        self.name = name;
        self.profilePic = profilePic;
    }
    
}
