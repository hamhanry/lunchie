//
//  ViewController.swift
//  Lunchie
//
//  Created by Hanry Ham on 29/07/19.
//  Copyright © 2019 Hanry Ham. All rights reserved.
//

import UIKit

class StartController: UIViewController {

    //var userActive = ModelUser(name: "Hanry", profilePic: UIImage.init(named: "lunch")!);
    @IBOutlet weak var introductionLabel: UILabel!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //let temp = UIApplication.shared.delegate as! AppDelegate
        //introductionLabel.text = temp.userActive.name
        imageView.image = UIImage(named : "lunch")
    }
    
    


}

