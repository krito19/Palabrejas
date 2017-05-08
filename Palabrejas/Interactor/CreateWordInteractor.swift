//
//  CreateWordInteractor.swift
//  Palabrejas
//
//  Created by Carolina Franco on 5/8/17.
//  Copyright © 2017 Carolina Franco. All rights reserved.
//

import UIKit

typealias WordTuple = (en: String, sp: String, an: String, sy: String)

protocol CreateWordInteractorInput
{
    func createWord(WithInput w: WordTuple)
}

protocol CreateWordInteractorOutput
{
    func didCreateWord(_ w:WordTuple, withResult suc:Bool)
}

class CreateWordInteractor: NSObject, CreateWordInteractorInput
{
    
    // Properties
    var createWordOutput: CreateWordInteractorOutput? = nil
    
    // Input Management
    func createWord(WithInput w: WordTuple)
    {
        
    }

    // Defaults

}
