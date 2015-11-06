//
//  SectionInfo.swift
//  SchoolHomeWork
//
//  Created by Hari Suresh Dosapati on 11/1/15.
//  Copyright © 2015 SmartData. All rights reserved.
//

import Foundation

public class SectionInfo : CustomStringConvertible {
    
    public let title:String!
    public let logo: String!
    
    
    public var description: String {
        return "SectionInfo --> \(title)";
    }
    
    init(title: String, logo: String)
    {
        self.title = title
        self.logo  = logo
    }
    
    
}
