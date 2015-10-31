//
//  WorkItemTableViewCell.swift
//  SchoolHomeWork
//
//  Created by Hari Suresh Dosapati on 10/15/15.
//  Copyright © 2015 SmartData. All rights reserved.
//

import UIKit


class WorkItemTableViewCell: UITableViewCell {
    
    var workItem:WorkItem?{
        didSet{
            updateUI()
        }
    }

    
    @IBOutlet weak var rowImage: UIImageView!

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var notes: UILabel!
    
    func updateUI(){
        
        // reset any existing tweet information
        title?.attributedText = nil
        //tweetScreenNameLabel?.text = nil
        rowImage?.image = nil
        notes?.text = nil
        //print("workItem is \(workItem)")
        // load new information from our tweet (if any)
        if let workItem = self.workItem
        {
           title.text = workItem.title
           notes.text = workItem.notes
            //TODO : Rest needs to be done...
            //let userName: String! = "Monday"
            //userName = userName.uppercaseString
            
            //let qos = Int(DISPATCH_QUEUE_PRIORITY_BACKGROUND)
            //dispatch_async(dispatch_get_global_queue(NSFoundationVersionNumber > NSFoundationVersionNumber_iOS_7_1 ? Int(QOS_CLASS_USER_INITIATED.value) : DISPATCH_QUEUE_PRIORITY_HIGH, 0)) {
            dispatch_async(dispatch_get_global_queue(NSFoundationVersionNumber > NSFoundationVersionNumber_iOS_7_1 ? Int(QOS_CLASS_USER_INITIATED.rawValue) : DISPATCH_QUEUE_PRIORITY_HIGH, 0)) { () -> Void in
                let rect = CGRect(x: 0, y: 0, width: 50, height: 50)
                let rowImageName = UIImageView(frame: rect)
                //rowImage.setImageWithString("AA", color: nil, circular: true)
                //print(" username --> \(userName!) , rowImage -  \(rowImage)")
                dispatch_async(dispatch_get_main_queue()) { () -> Void in
                    //print("In side dispatch queue \()")
                    rowImageName.setImageWithString(self.workItem!.dayName, color: nil, circular: true)
                    self.rowImage.addSubview(rowImageName)
                }
            }
            

            //rowImage = myImgView
            //rowImage.image =  UIImage()//UIImage(named: userName,color:nil,circular:true)
            //https://s3.amazonaws.com/uifaces/faces/twitter/sillyleo/48.jpg
            //let profileImageURL = NSURL(string: "https://s3.amazonaws.com/uifaces/faces/twitter/sillyleo/48.jpg" as String)
            //tweetProfileImageView
            /*if let imageData = NSData(contentsOfURL: profileImageURL!) { // blocks main thread!
                rowImage?.image = UIImage(data: imageData)
            }*/
            //rowImage.image =
            //NSString *userName = @"Michael Bluth";
            //UIImageView *myImgView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
            //[myImgView setImageWithString:userName color:nil circular:YES];
            
        }

    
    }
}
