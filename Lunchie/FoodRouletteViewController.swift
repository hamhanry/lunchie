//
//  FoodRouletteViewController.swift
//  Lunchie
//
//  Created by Bin-15 on 01/08/19.
//  Copyright © 2019 Hanry Ham. All rights reserved.
//

import UIKit

class FoodRouletteViewController: UIViewController {
    var foods: [ModelFood] = []
    @IBOutlet weak var imageViewer: UIImageView!
    @IBOutlet weak var foodNameViewer: UILabel!
    @IBOutlet weak var buttonSpin: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getFood()
        showFoodAtIndex(idx: 0)
    }
    func getFood() {
        //get list of people from Event class
        //dummy
        foods.append(ModelFood(image: UIImage(named: "lunch")!, name: "Makanan Test"))
        foods.append(ModelFood(image: UIImage(named: "lunch")!, name: "Makanan Test2"))
        foods.append(ModelFood(image: UIImage(named: "lunch")!, name: "Makanan Test3"))
        foods.append(ModelFood(image: UIImage(named: "lunch")!, name: "Makanan Test4"))
        //dummy
    }
    func showFoodAtIndex(idx: Int) {
        imageViewer.image = foods[idx].image
        foodNameViewer.text = foods[idx].name
    }
    
    @IBAction func spinRoulette(_ sender: Any) {
        buttonSpin.isEnabled = false
        randomizePeople()
    }
    //randomize people
    var timer: Timer?
    var timeLeft = 30
    func randomizePeople() {
        timeLeft = 30
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(onTimerFires), userInfo: nil, repeats: true)
        
    }
    @objc func onTimerFires()
    {
        timeLeft -= 1
        let index = Int.random(in: 0 ..< foods.count)
        showFoodAtIndex(idx: index)
        if timeLeft <= 0 {
            timer!.invalidate()
            timer = nil
            nextButton.isEnabled = true
        }
    }
    //randomize people
}
