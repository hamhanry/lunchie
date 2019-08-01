//
//  ModelEvent.swift
//  Lunchie
//
//  Created by Hanry Ham on 01/08/19.
//  Copyright © 2019 Hanry Ham. All rights reserved.
//

import Foundation
import UIKit

class ModelEvent{
    let temp = UIApplication.shared.delegate as! AppDelegate
    
    var user : ModelUser
    var friends : [ModelFriend] = []
    
    init(host : ModelUser, guest: [ModelFriend]) {
        self.user = host
        self.friends = guest
    }
}
