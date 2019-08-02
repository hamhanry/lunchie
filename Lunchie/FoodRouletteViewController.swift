//
//  FoodRouletteViewController.swift
//  Lunchie
//
//  Created by Hanry Ham on 02/08/19.
//  Copyright © 2019 Hanry Ham. All rights reserved.
//

import UIKit

class FoodRouletteViewController: UIViewController {
    let temp = UIApplication.shared.delegate as! AppDelegate
    var foods: [ModelFood] = []
    @IBOutlet weak var imageViewer: UIImageView!
    @IBOutlet weak var foodNameViewer: UILabel!
    @IBOutlet weak var buttonSpin: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getFood()
        showFoodAtIndex(idx: 0)
    }
    
    func getFood() {
        //get list of people from Event class
        //dummy
        foods.append(ModelFood(image: UIImage(named: "ayamBlenger")!, name: "ayamBlenger"))
        foods.append(ModelFood(image: UIImage(named: "ayamLengkuas")!, name: "ayamLengkuas"))
        foods.append(ModelFood(image: UIImage(named: "nasiUduk")!, name: "nasiUduk"))
        foods.append(ModelFood(image: UIImage(named: "rocky")!, name: "rocky"))
        foods.append(ModelFood(image: UIImage(named: "sateKambing")!, name: "sateKambing"))
        //dummy
    }
    func showFoodAtIndex(idx: Int) {
        imageViewer.image = foods[idx].image
        foodNameViewer.text = foods[idx].name
    }
    
    @IBAction func spinRoulette(_ sender: Any) {
        buttonSpin?.isEnabled = false
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
            temp.finalFood = foods[index].image
        }
    }

}
