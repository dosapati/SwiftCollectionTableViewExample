//
//  SchoolInfo.swift
//  SchoolHomeWork
//
//  Created by Hari Suresh Dosapati on 11/1/15.
//  Copyright © 2015 SmartData. All rights reserved.
//

import Foundation

public class SchoolInfo :CustomStringConvertible {
   
    public let title:String!
    public let logo: String!
    
    private var classes = [ClassInfo]()

    public func addClassInfo(classInfo:ClassInfo){
    
        self.classes.append(classInfo)
    
    }
    
    public func getNoOfClasses() -> Int{
        
        return self.classes.count
        
    }
    
    public func getClassInfoAt(classIndex:Int) -> ClassInfo{
        return classes[classIndex]
    }
    
    
    public func getClasses() -> [ClassInfo]{
        
        return classes
        
    }
    
    public var description: String {
        return "SchoolInfo --> \(title)";
    }
    
    init(title: String, logo: String)
    {
        self.title = title
        self.logo  = logo
    }
    
    
    
    
}
