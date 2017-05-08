//
//  Word+CoreDataProperties.swift
//  Palabrejas
//
//  Created by Carolina Franco on 5/8/17.
//  Copyright © 2017 Carolina Franco. All rights reserved.
//

import Foundation
import CoreData


extension Word {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Word> {
        return NSFetchRequest<Word>(entityName: "Word")
    }

    @NSManaged public var wordEnglish: String?
    @NSManaged public var wordSpanish: String?
    @NSManaged public var drawing: NSObject?
    @NSManaged public var audio: NSObject?
    @NSManaged public var antonym: String?
    @NSManaged public var synonymous: String?
    @NSManaged public var active: Bool

}
