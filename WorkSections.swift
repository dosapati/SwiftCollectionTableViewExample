//
//  WorkSection.swift
//  SchoolHomeWork
//
//  Created by Hari Suresh Dosapati on 10/15/15.
//  Copyright © 2015 SmartData. All rights reserved.
//

import Foundation

class WorkSections {
    private var workItems = [[WorkItem]]()
    private var sections = [String]()
    let userCalendar = NSCalendar.currentCalendar()
    // MARK: - Public
    
    var numberOfWorkItems: Int {
        return workItems.count
    }
    
    var numberOfSections: Int {
        //print("sending section count as \(sections.count)")
        return sections.count
    }
    
    init()
    {
        createSampleData()
        
    }
    
    func titleForSection(index: Int) -> String? {
        
        return sections[index]
    }
    
    func numberOfWorkItemsInSection(index: Int) -> Int {
        let sectionWorkItems = workItems[index]
        return sectionWorkItems.count
    }
    
    func workItemAtSection(section: Int,rowIndex:Int) -> WorkItem? {
        if section >= 0 {
            //print("workItemAtSection \(section) &&& \(rowIndex) --> \(workItems[section].count <= section)")
            return workItems[section][rowIndex]

            /*if workItems[section].count <= section {
                return workItems[section][rowIndex]
            }else{
                return nil
            }*/
        }else{
            return nil
        }
    }
    
    // MARK: - Private
    
    private func createSampleData(){
        
        var firstSectionItems = [WorkItem]()
        
        firstSectionItems.append(WorkItem(title: "Weekly Reminders", dayName: "Weekly", created: createDate(11), notes: "1. Please send in permission slips and field trip payments by Thursday. \n2. Field Trip to \"Happy Days Farm\" on Friday, October 16th. Please wear your gym uniform and bring in a brown bag lunch with your child's name clearly labeled. \n3. Sight word HW due on Friday."))
        firstSectionItems.append(WorkItem(title: "Other", dayName: "Other", created: createDate(11), notes: "Sight Words: yellow, blue, red, up"))
        
        firstSectionItems.append(WorkItem(title: "Monday", dayName: "M", created: createDate(10), notes: "NO SCHOOL - COLUMBUS DAY"))
        
        firstSectionItems.append(WorkItem(title: "Tuesday", dayName: "T", created: createDate(9), notes: "Phonics: Phonics worksheet pg. 42 (Letter W) **ACTIVITY DAY TOMORROW, WEAR YOUR GYM UNIFORM**"))
        
        sections.append("October 12th - October 16th")
        
        var secondSectionItems = [WorkItem]()
        
        secondSectionItems.append(WorkItem(title: "Weekly Reminders", dayName: "Weekly", created: createDate(11), notes: "Welcome to the KC Zebras' HW Blog! 1. Scholastic orders will be submitted on Monday, October 5th. \n2. Please bring in headphones if you have not done so already. \n3. Firehouse trip will be on Thursday, October 8th – send in permission slips ASAP. \n4. Book Bus will be visiting Primary Prep on Friday (10/9) – please send in library applications, if you have not done so already. \n5. There will be NO SCHOOL on Monday, October 12th – Columbus Day"))
        
        secondSectionItems.append(WorkItem(title: "Other", dayName: "Other", created: createDate(11), notes: "Sight Words: where, go, to, it"))
        
        
        secondSectionItems.append(WorkItem(title: "Monday", dayName: "M", created: createDate(20), notes: "Phonics worksheet pg. 34. Please complete the \"Ll\" portion of the homework sheet, ONLY"))
        
        secondSectionItems.append(WorkItem(title: "Tuesday", dayName: "T", created: createDate(19), notes: "Phonics worksheet pg.36. Please complete the \"Dd\" portion of the homework sheet, ONLY. **REMINDER: Wear your gym uniform tomorrow**"))
        sections.append("October 5th - October 9th")

        
        workItems.append(firstSectionItems)
        
        workItems.append(secondSectionItems)
        
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