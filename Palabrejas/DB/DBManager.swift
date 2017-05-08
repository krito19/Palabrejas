//
//  DBManager.swift
//  Palabrejas
//
//  Created by Carolina Franco on 5/8/17.
//  Copyright © 2017 Carolina Franco. All rights reserved.
//

import UIKit
import CoreData

class DBManager: NSObject
{
    //Properties
    var context:NSManagedObjectContext? = nil
    
    //Singleton
    static let shared = DBManager ()
    
    private override init()
    {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        self.context = appDelegate.persistentContainer.viewContext;
    }
    
    // MARK: DBManager Funcionallity
    
    func wordManaged() -> Word
    {
        let w = NSEntityDescription.insertNewObject(forEntityName: "Word", into:self.context!) as! Word
        return w
    }
    
    func delete(_ element:NSManagedObject) -> Bool
    {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.saveContext()
    }

}
