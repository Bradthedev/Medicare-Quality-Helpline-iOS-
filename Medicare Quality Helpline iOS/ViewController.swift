//
//  ViewController.swift
//  Medicare Quality Helpline iOS
//
//  Created by Rayna Qian on 1/3/18.
//  Copyright © 2018 Rayna Qian. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let reuseIdentifier = "cell" // also enter this string as the cell identifier in the storyboard
    var states = ["AK\nAlaska", "AZ\nArizona", "CA\nCalifornia", "CT\nConnecticut", "HI\nHawaii", "ID\nIdaho", "MA\nMassachusetts", "ME\nMaine", "NH\nNew Hampshire", "NJ\nNew Jersey", "NV\nNevada", "NY\nNew York", "OR\nOregon", "PA\nPennsylvania", "PR\nPuerto Rico", "RI\nRhode Island", "VI\nVirgin Islands", "VT\nVermont", "WA\nWashington", "Not listed"]

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.states.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! MyCollectionViewCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.myLabel.text = self.states[indexPath.item]
        cell.backgroundColor = UIColor(red: 0/255, green: 109/255, blue: 193/255, alpha: 1) 
        cell.layer.cornerRadius = 5
        cell.layer.shadowColor = UIColor.lightGray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        cell.layer.shadowRadius = 2.0
        cell.layer.shadowOpacity = 1.0
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        
        if cell.myLabel.text == "My state or territory is not listed" {
            
        }
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

