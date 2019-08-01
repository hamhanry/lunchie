//
//  ModelHistoryMakanan.swift
//  Lunchie
//
//  Created by Hanry Ham on 01/08/19.
//  Copyright © 2019 Hanry Ham. All rights reserved.
//

import Foundation
class ModelHistoryMakanan {
    var nama: String = ""
    var makanan: String = ""
    var status: Int = 0    //0-ongoing 1-joined -1-declined
    
    init(_nama: String, _makanan: String, _status: Int) {
        nama = _nama
        makanan = _makanan
        status = _status
    }
}
