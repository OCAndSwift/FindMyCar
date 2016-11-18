//
//  SSString.swift
//  SSKitSwiftCDemo
//
//  Created by Mac on 16/9/16.
//  Copyright © 2016年 YD. All rights reserved.
//

import Foundation

extension String {
    
    var length : Int { return self.characters.count }
    
    public func aligenRight(totalLength length:Int, pad:String) ->String {
        let amountToPad = length-self.length
        if amountToPad < 1 {
            return self
        }
        var string : String = self
        for _ in 1...amountToPad {
            string = pad + string
        }
        return string
    }
    public func alignLeft(totalLength:Int, pad:String) ->String {
        let amountToPad = totalLength-self.length
        if amountToPad < 1 {
            return self
        }
        var string : String = self
        for _ in 1...amountToPad {
            string = string+pad
        }
        return string
    }
    
    public func getClassString() ->String{
        if let appName = Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as? String {
            let classStringName = "_TtC\(appName.length)\(appName)\(self.length)\(self)"
            return classStringName
        }
        return ""
    }
    
    func replaceString(replace:String, by charString:String) ->String {
        if replace.isEmpty || charString.isEmpty { return self}
        var tempString = self
        tempString = tempString.replacingCharacters(in: range(of: replace)!, with: charString)
        return tempString
    }
}
