//
//  SSView.swift
//  SSKitSwiftCDemo
//
//  Created by Mac on 16/9/16.
//  Copyright © 2016年 YD. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    var left : CGFloat {
        get {
            return frame.origin.x
        }
        set(newLeft) {
            var tempFrame : CGRect = frame
            tempFrame.origin.x = newLeft
            frame = tempFrame
        }
    }
    var top : CGFloat {
        get {
            return frame.origin.y
        }
        set(newTop) {
            var tempFrame : CGRect = frame
            tempFrame.origin.y = newTop
            frame = tempFrame
        }
    }
    var right : CGFloat {
        get {
            return frame.origin.x + frame.size.width
        }
        
        set(newRight) {
            var tempFrame : CGRect = frame
            tempFrame.origin.x = newRight - frame.size.width;
            frame = tempFrame
        }
    }
    var bottom : CGFloat {
        get {
            return frame.origin.y + frame.size.height
        }
        
        set(newBottom) {
            var tempFrame : CGRect = frame
            tempFrame.origin.y = newBottom - frame.size.height
            frame = tempFrame
        }
    }
    
    var width : CGFloat {
        get {
            return frame.size.width
        }
        set(newWidth) {
            var tempFrame : CGRect = frame
            tempFrame.size.width = newWidth
            frame = tempFrame
        }
    }
    
    var height : CGFloat {
        get {
            return frame.size.height
        }
        set(newHeight) {
            var tempFrame : CGRect = frame
            tempFrame.size.height = newHeight
            frame = tempFrame
        }
    }
    var centerX : CGFloat {
        get {
            return self.center.x
        }
        set(newCenterX) {
            self.center = CGPoint.init(x: newCenterX, y: self.center.y)
        }
    }
    
    var centerY : CGFloat {
        get {
            return self.center.y
        }
        set(newCenterY) {
            self.center = CGPoint.init(x: self.center.x, y: newCenterY)
        }
    }
    
    var size : CGSize {
        get {
            return self.frame.size
        }
        set(newSize) {
            var tempFrame : CGRect = frame
            tempFrame.size = newSize
            frame = tempFrame
        }
    }
    
    var origin : CGPoint {
        get {
            return frame.origin
        }
        set(newOrigin) {
            var tempFrame : CGRect = frame
            tempFrame.origin = newOrigin
            frame = tempFrame
        }
    }
    //MARK:Method
    func viewController() -> UIViewController? {
        var view : UIView = self
        var nextResponder : UIResponder = view.superview!
        while (view.superview != nil) {
            view = view.superview!
            nextResponder = view.next!
            if (nextResponder.isKind(of: UIViewController.self)) {
                return nextResponder as? UIViewController
            }
        }
        return nil
    }
    
    func removeAllObjects() {
        while self.subviews.count > 0 {
            self.subviews.last?.removeFromSuperview()
        }
    }
    
    func backgroundColor(_ image: UIImage) {
        self.backgroundColor = UIColor.init(patternImage: image)
    }
    func cleanSubColors() {
        for view in self.subviews {
            view.backgroundColor = UIColor.clear
        }
        self.backgroundColor = UIColor.clear
    }
}
