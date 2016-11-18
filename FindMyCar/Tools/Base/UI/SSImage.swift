//
//  SSImage.swift
//  SSKitSwiftCDemo
//
//  Created by Mac on 16/10/11.
//  Copyright © 2016年 YD. All rights reserved.
//

import Foundation
import UIKit
extension UIImage {
    func toColor() -> UIColor {
        return UIColor.init(patternImage: self)
    }
    
    /// 将一个图片进行裁剪
    ///
    /// - parameter image:   原图片
    /// - parameter cutRect: 裁剪的尺寸
    ///
    /// - returns: 返回的是一个图片
    class func image(_ image: UIImage, cutRect: CGRect) -> UIImage {
        guard let sourceImageRef = image.cgImage else {
            return UIImage.init()
        }
        let newImageRef = sourceImageRef.cropping(to: cutRect)
        return UIImage.init(cgImage: newImageRef!)
    }
}
