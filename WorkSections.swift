//
//  WorkSection.swift
//  SchoolHomeWork
//
//  Created by Hari Suresh Dosapati on 10/15/15.
//  Copyright © 2015 SmartData. All rights reserved.
//

import Foundation

class WorkSection {
    private var workItems = [[WorkItem]]()
    private var sections = [String]()
    let userCalendar = NSCalendar.currentCalendar()
    // MARK: - Public
    
    var numberOfWorkItems: Int {
        return workItems.count
    }
    
    var numberOfSections: Int {
        return sections.count
    }
    
    init()
    {
        
        
    }
    
    func numberOfWorkItemsInSection(index: Int) -> Int {
        let sectionWorkItems = workItems[index]
        return sectionWorkItems.count
    }
    
    // MARK: - Private
    
    private func createSampleData(){
        
        var firstSectionItems = [WorkItem]()
        
        firstSectionItems.append(WorkItem(title: "Monday Title", dayName: "M", created: createDate(10), notes: "Monday Task notes"))
        
        firstSectionItems.append(WorkItem(title: "Tuesday Title", dayName: "T", created: createDate(9), notes: "Tuesday Task notes"))
        
        sections.append("October 12th - October 16th")
        
        var secondSectionItems = [WorkItem]()
        
        secondSectionItems.append(WorkItem(title: "Monday Title", dayName: "M", created: createDate(20), notes: "Monday Task notes"))
        
        secondSectionItems.append(WorkItem(title: "Tuesday Title", dayName: "T", created: createDate(19), notes: "Tuesday Task notes"))
        
        sections.append("October 5th - October 9th")
        
    }
    
    func createDate(daysOff:Int) -> NSDate{
        let dayObj = userCalendar.dateByAddingUnit(
            [.Day],
            value: daysOff,
            toDate: NSDate(),
            options: [])!
        
        return dayObj
    }
    
    


}