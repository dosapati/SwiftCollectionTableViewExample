//
//  Work.swift
//  SchoolHomeWork
//
//  Created by Hari Suresh Dosapati on 10/9/15.
//  Copyright © 2015 SmartData. All rights reserved.
//

import Foundation

public class WorkItem : CustomStringConvertible
{
    public let dayName:String!
    public let title:String!
    public let created: NSDate
    public let notes:String
    
    
    public var description: String {
        return "";
    }
    
    init(title: String, dayName: String, created: NSDate, notes: String)
    {
        self.title = title
        self.dayName = dayName
        self.created = created
        self.notes = notes
    }
    
    convenience init(copies workItem: WorkItem)
    {
        self.init(title: workItem.title, dayName: workItem.dayName, created: workItem.created, notes : workItem.notes)
    }

    
    
    
}
