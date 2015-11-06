//
//  ClassCollectionViewCell.swift
//  SchoolHomeWork
//
//  Created by Hari Suresh Dosapati on 10/31/15.
//  Copyright © 2015 SmartData. All rights reserved.
//

import UIKit

class SectionCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var pinImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    var sectionInfo:SectionInfo?{
        didSet{
            updateUI()
        }
    }
    
    func updateUI(){
        
        title?.attributedText = nil
        //tweetScreenNameLabel?.text = nil
        pinImage?.image = nil
        //print("workItem is \(workItem)")
        // load new information from our tweet (if any)
        if let localSessionInfoObj = self.sectionInfo
        {
            title.text = localSessionInfoObj.title
            //TODO : Rest needs to be done...
            //let userName: String! = "Monday"
            //userName = userName.uppercaseString
            
            //let qos = Int(DISPATCH_QUEUE_PRIORITY_BACKGROUND)
            //dispatch_async(dispatch_get_global_queue(NSFoundationVersionNumber > NSFoundationVersionNumber_iOS_7_1 ? Int(QOS_CLASS_USER_INITIATED.value) : DISPATCH_QUEUE_PRIORITY_HIGH, 0)) {
            dispatch_async(dispatch_get_global_queue(NSFoundationVersionNumber > NSFoundationVersionNumber_iOS_7_1 ? Int(QOS_CLASS_USER_INITIATED.rawValue) : DISPATCH_QUEUE_PRIORITY_HIGH, 0)) { () -> Void in
                //let rect = CGRect(x: 0, y: 0, width: 50, height: 50)
                //let rowImageName = UIImageView(frame: rect)
                //rowImage.setImageWithString("AA", color: nil, circular: true)
                //print(" username --> \(userName!) , rowImage -  \(rowImage)")
                dispatch_async(dispatch_get_main_queue()) { () -> Void in
                    //print("In side dispatch queue \()")
//                    rowImageName.setImageWithString(localClassObj.imgName, color: nil, circular: true)
//                    self.pinImage.addSubview(rowImageName)
                    self.pinImage.image = UIImage(named: localSessionInfoObj.imgName)
                }
            }

        
    }
}
}
