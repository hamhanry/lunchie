//
//  FinalViewController.swift
//  Lunchie
//
//  Created by Hanry Ham on 02/08/19.
//  Copyright © 2019 Hanry Ham. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    let temp = UIApplication.shared.delegate as! AppDelegate
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var commandLabel: UILabel!
    @IBOutlet weak var takePicBtn: UIButton!
    @IBOutlet weak var ratingBtn: UIButton!
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var topicImage: UIImageView!
    @IBOutlet weak var finalCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Hello \(temp.userActive.name)"
        commandLabel.text = "Please wait for your friend confirmation"
        finalCollectionView.dataSource = self
        finalCollectionView.delegate = self
        foodImage.image = temp.finalFood
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return temp.listFriend.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = finalCollectionView.dequeueReusableCell(withReuseIdentifier: "FinalFriendCollectionView", for: indexPath) as! FinalFriendCollectionView
        cell.finalProfilePicture.image = temp.listFriend[indexPath.item].image
        cell.finalNameLabel.text = temp.listFriend[indexPath.item].name
        return cell
    }
    
    @IBAction func openCamera(_ sender: Any) {
    }
    
    @IBAction func rate(_ sender: Any) {
    }
    
}
