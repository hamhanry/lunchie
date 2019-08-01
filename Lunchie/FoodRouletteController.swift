//
//  FoodRouletteController.swift
//  Lunchie
//
//  Created by Bin-15 on 01/08/19.
//  Copyright © 2019 Hanry Ham. All rights reserved.
//

import UIKit

class FoodRouletteController: UIViewController {
    var users: [ModelFriend] = []
    @IBOutlet weak var imageViewer: UIImageView!
    @IBOutlet weak var nameViewer: UILabel!
    @IBOutlet weak var buttonSpin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getPeople()
        initRoulette()
    }
    func getPeople() {
        //get list of people from Event class
    }
    func initRoulette () {
        imageViewer.image = users[0].image
        nameViewer.text = users[0].name
    }
    
    @IBAction func spinRoulette(_ sender: Any) {
        buttonSpin.isEnabled = false
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
