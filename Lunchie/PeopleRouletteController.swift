//
//  PeopleRouletteController.swift
//  Lunchie
//
//  Created by Hanry Ham on 01/08/19.
//  Copyright © 2019 Hanry Ham. All rights reserved.
//

import UIKit

class PeopleRouletteController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    let temp = UIApplication.shared.delegate as! AppDelegate
    var users: [ModelFriend] = []
    @IBOutlet weak var imageViewer: UIImageView!
    @IBOutlet weak var nameViewer: UILabel!
    @IBOutlet weak var buttonSpin: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var peopleCollection: UICollectionView!
    
    @IBAction func spinRoulette(_ sender: Any) {
        buttonSpin?.isEnabled = false
        randomizePeople()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        peopleCollection.delegate = self
        peopleCollection.dataSource = self
        //getPeople()
        showPeopleAtIndex(idx: 0)
    }
    /*func getPeople() {
        //get list of people from Event class
        //dummy
        users.append(ModelFriend(image: UIImage(named: "lunch")!, name: "Manusia Test"))
        users.append(ModelFriend(image: UIImage(named: "lunch")!, name: "Manusia Test2"))
        users.append(ModelFriend(image: UIImage(named: "lunch")!, name: "Manusia Test3"))
        users.append(ModelFriend(image: UIImage(named: "lunch")!, name: "Manusia Test4"))
        //dummy
    }*/
    func showPeopleAtIndex(idx: Int) {
        imageViewer.image = temp.listFriend[idx].image
        nameViewer.text = temp.listFriend[idx].name
//        imageViewer.image = users[idx].image
//        nameViewer.text = users[idx].name
    }
    
    //randomize people
    var timer: Timer?
    var timeLeft = 30
    
    func randomizePeople() {
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(onTimerFires), userInfo: nil, repeats: true)
    }
    @objc func onTimerFires()
    {
        timeLeft -= 1
//        let index = Int.random(in: 0 ..< users.count)
        let index = Int.random(in: 0 ..< temp.listFriend.count)
        showPeopleAtIndex(idx: index)
        //changeCellBorder(at: index)
        if timeLeft <= 0 {
            timer!.invalidate()
            timer = nil
            nextButton.isEnabled = true
        }
    }
    func changeCellBorder (at: Int) {
        let cell = peopleCollection.cellForItem(at: IndexPath(item: at, section: 0))
        cell?.layer.borderColor = UIColor.red.cgColor
        cell?.layer.borderWidth = 2.0
    }
    //randomize people
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return temp.listFriend.count
        //return users.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let user = temp.listFriend[indexPath.row]
//        let user = users[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PeopleCell", for: indexPath) as! PeopleCollectionViewCell
        cell.setImage(img: user.image)
        return cell
    }

}
