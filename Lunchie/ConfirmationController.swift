//
//  ConfirmationController.swift
//  Lunchie
//
//  Created by Hanry Ham on 01/08/19.
//  Copyright © 2019 Hanry Ham. All rights reserved.
//

import UIKit

class ConfirmationController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    let temp = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var commandLabel: UILabel!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var headerCollection: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pickSpinnerBtn: UIButton!
    
    var event : ModelEvent?
    var friends : [ModelFriend] = []
    var host : ModelUser?
    var seconds = 20
    var timer = Timer()
    var isTimerRunning = false
    
    func runTimer(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ConfirmationController.updateTimer)), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        seconds -= 1     //This will decrement(count down)the seconds.
        //timeLabel.text = "\(seconds)" //This will update the label.
        timeLabel.text = timeString(time: TimeInterval(seconds))
        if seconds < 1 {
            timer.invalidate()
            pickSpinnerBtn.isHidden = false
            //Send alert to indicate "time's up!"
        } else {
            seconds -= 1
            timeLabel.text = timeString(time: TimeInterval(seconds))
        }
    }
    
    func timeString(time:TimeInterval) -> String {
        //let hours = Int(time) / 3600
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format:"%02i:%02i", minutes, seconds)
    }
    
    @IBAction func cancelInvitation(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        runTimer()
        pickSpinnerBtn.isHidden = true
        
        super.viewDidLoad()
        //let temp = UIApplication.shared.delegate as! AppDelegate
        greetingLabel.text = "Hello \(temp.userActive.name)"
        commandLabel.text = "Please wait for your friend confirmation"
        cancelButton.setTitle("CANCEL", for: .normal)
        pickSpinnerBtn.setTitle("PICK SPINNER", for: .normal)
        headerCollection.text = "Friends Confirmation"
        timeLabel.textAlignment = NSTextAlignment.center
        //friends = createArray()
        event = ModelEvent(host: temp.userActive, guest: friends)
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    /*func createArray() -> [ModelFriend]{
        var tempFriends : [ModelFriend] = []
        
        let friend1 = ModelFriend(image : UIImage(named: "lunch")!, name: "Hanry")
        let friend2 = ModelFriend(image : UIImage(named: "lunch")!, name: "Ade")
        let friend3 = ModelFriend(image : UIImage(named: "lunch")!, name: "Alfi")
        let friend4 = ModelFriend(image : UIImage(named: "lunch")!, name: "Chico")
        let friend5 = ModelFriend(image : UIImage(named: "lunch")!, name: "Lasmi")
        
        tempFriends.append(friend1)
        tempFriends.append(friend2)
        tempFriends.append(friend3)
        tempFriends.append(friend4)
        tempFriends.append(friend5)
        
        return tempFriends
        
    }*/
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return temp.listFriend.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendCollectionView", for: indexPath) as! FriendCollectionView
        //cell.profilePicture.image = event!.friends[indexPath.item].image
        //cell.nameLabel.text = event!.friends[indexPath.item].name
        cell.profilePicture.image = temp.listFriend[indexPath.item].image
        cell.nameLabel.text = temp.listFriend[indexPath.item].name
        return cell
    }
    
    
}
