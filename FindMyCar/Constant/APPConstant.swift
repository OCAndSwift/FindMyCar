//
//  APPConstant.swift
//  whereIsMyCar
//
//  Created by Mac on 16/11/18.
//  Copyright © 2016年 Blin. All rights reserved.
//

import Foundation
import UIKit
struct APPConstant {
    
    //MARK:Singlton
    static let userDefault:UserDefaults = UserDefaults.standard//NSUserDefault
    static let window:UIWindow = UIApplication.shared.keyWindow!//UIWindow
    
    
    //MARK:Constant
    static let bundleVersionKey:String = kCFBundleVersionKey as String
    static let appVersion:String? = UserDefaults.standard.object(forKey: kCFBundleVersionKey as String) as? String
    
    static let currentVersion:String = Bundle.main.object(forInfoDictionaryKey: kCFBundleVersionKey as String) as! String
    
    //MARK:APPSettings
    static let AppName:String = "我车呢"
    
    
}
