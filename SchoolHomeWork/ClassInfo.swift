//
//  ClassInfo.swift
//  SchoolHomeWork
//
//  Created by Hari Suresh Dosapati on 10/31/15.
//  Copyright © 2015 SmartData. All rights reserved.
//

import Foundation

public class ClassInfo : CustomStringConvertible{
    
    public let title:String!
    public let imgName:String
    
    
    public var description: String {
        return "title -> \(self.title)";
    }
    
    
    
    
    init(title: String, imgName: String)
    {
        self.title = title
        self.imgName = imgName
        
    }
    
    convenience init(copies classInfo: ClassInfo)
    {
        self.init(title: classInfo.title, imgName : classInfo.imgName)
    }

    
}
