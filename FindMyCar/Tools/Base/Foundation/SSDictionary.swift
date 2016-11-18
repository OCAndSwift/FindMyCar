//
//  SSDictionary.swift
//  SSKitSwiftCDemo
//
//  Created by Mac on 16/9/19.
//  Copyright © 2016年 YD. All rights reserved.
//

import Foundation

extension NSDictionary {
    public func containsObject(_ key:String) -> Bool {
        if key.isEmpty {return false}
        return self[key] != nil
    }
    
    public func entries(forKeys:[String]) -> NSDictionary {
        let dic : NSMutableDictionary = NSMutableDictionary.init(capacity: 0)
        for key in forKeys {
            if self.object(forKey: key) != nil {dic[key] = self.object(forKey: key)}
        }
        return dic.copy() as! NSDictionary
    }
    
    public func jsonStringEncode() -> String? {
        if JSONSerialization.isValidJSONObject(self) == false {return nil}
        let jsonData : NSData
        do {
            jsonData = try JSONSerialization.data(withJSONObject: self, options: JSONSerialization.WritingOptions(rawValue: UInt(0))) as NSData
            let json = String.init(data: jsonData as Data, encoding: String.Encoding.utf8)
            return json ?? ""
        } catch  {
            return nil
        }
    }
    
    
    
}
