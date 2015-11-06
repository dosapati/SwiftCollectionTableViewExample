//
//  SchoolInfos.swift
//  SchoolHomeWork
//
//  Created by Hari Suresh Dosapati on 11/1/15.
//  Copyright © 2015 SmartData. All rights reserved.
//

import Foundation

public class SchoolInfos {
    
    private var schools = [SchoolInfo]()
    
    
    init()
    {
        createSampleData()
        
    }
    
    func createSampleData(){
        let school1 = SchoolInfo( title: "Primary Prep Elementary & Middle School", logo: "primaryprep")
        let s1 = ClassInfo(title: "Kindergarten", imgName: "kg")
        s1.addSectionInfo(SectionInfo(title: "Ka - Miss Oks - Tigers", logo: "tigers"))
        s1.addSectionInfo(SectionInfo(title: "Kb - Mrs. Lynch - Bears", logo: "bears"))
        s1.addSectionInfo(SectionInfo(title: "Kc - Miss DePaula - Zebras", logo: "zebras"))
        
        school1.addClassInfo(s1)
        
        let s2 = ClassInfo(title: "Grade 1", imgName: "g1")
        s2.addSectionInfo(SectionInfo(title: "1a - Miss Magee", logo: "1a"))
        s2.addSectionInfo(SectionInfo(title: "1b - Miss Cunningham", logo: "1b"))
        s2.addSectionInfo(SectionInfo(title: "1c - Miss Kessler", logo: "1c"))
        school1.addClassInfo(s2)
        
        schools.append(school1)

        
        
    }
    
    public func getNumberOfSchoolInfos() -> Int{
        return schools.count
    }
    
    public func getNumberOfClassesFor( schoolIndex:Int) -> Int{
        return schools[schoolIndex].getNoOfClasses();
    }
    
    public func getSchoolInfoAt( schoolIndex:Int) -> SchoolInfo{
        return schools[schoolIndex];
    }


    
    /**
    <array>
    <dict>
    <key>sectionName</key>
    <value>Ka - Miss Oks - Tigers</value>
    <key>logo</key>
    <value>tigers</value>
    </dict>
    <dict>
    <key>sectionName</key>
    <value>Kb - Mrs. Lynch - Bears</value>
    <key>logo</key>
    <value>bears</value>
    </dict>
    <dict>
    <key>sectionName</key>
    <value>Kc - Miss DePaula - Zebras</value>
    <key>logo</key>
    <value>zebras</value>
    </dict>
    </array>
    **/
    
    
}
