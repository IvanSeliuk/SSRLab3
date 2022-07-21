//
//  Settings.swift
//  SSRLabTest3
//
//  Created by Иван Селюк on 20.07.22.
//

import UIKit

class Setting: NSObject {
    
    enum UserDefaultsKeys: String {
        case pickerText
        case segmentText
        case checkBoxOneText
        case checkBoxTwoText
        case checkBoxThreeText
        case textViewText
    }
    
    static let shared = Setting()
 
    
    var pickerText: String? {
        set { UserDefaults.standard.set(newValue, forKey: UserDefaultsKeys.pickerText.rawValue) }
        get { return UserDefaults.standard.string(forKey: UserDefaultsKeys.pickerText.rawValue) }
    }
    
    var segmentText: String? {
        set { UserDefaults.standard.set(newValue, forKey: UserDefaultsKeys.segmentText.rawValue) }
        get { return UserDefaults.standard.string(forKey: UserDefaultsKeys.segmentText.rawValue) }
    }
    
    var checkBoxOneText: String? {
        set { UserDefaults.standard.set(newValue, forKey: UserDefaultsKeys.checkBoxOneText.rawValue) }
        get { return UserDefaults.standard.string(forKey: UserDefaultsKeys.checkBoxOneText.rawValue) }
    }
    
    var checkBoxTwoText: String? {
        set { UserDefaults.standard.set(newValue, forKey: UserDefaultsKeys.checkBoxTwoText.rawValue) }
        get { return UserDefaults.standard.string(forKey: UserDefaultsKeys.checkBoxTwoText.rawValue) }
    }
    
    var checkBoxThreeText: String? {
        set { UserDefaults.standard.set(newValue, forKey: UserDefaultsKeys.checkBoxThreeText.rawValue) }
        get { return UserDefaults.standard.string(forKey: UserDefaultsKeys.checkBoxThreeText.rawValue) }
    }
    
    var textViewText: String? {
        set { UserDefaults.standard.set(newValue, forKey: UserDefaultsKeys.textViewText.rawValue) }
        get { return UserDefaults.standard.string(forKey: UserDefaultsKeys.textViewText.rawValue) }
    }
}

