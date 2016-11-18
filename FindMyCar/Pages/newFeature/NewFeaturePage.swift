//
//  NewFeaturePage.swift
//  whereIsMyCar
//
//  Created by Mac on 16/11/17.
//  Copyright © 2016年 Blin. All rights reserved.
//

import Foundation
import UIKit
class NewFeaturePage: UIViewController {
    //MARK:property属性
    let intoButton:UIButton = UIButton.init()
    //MARK:system系统
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.white
        self.automaticallyAdjustsScrollViewInsets = false
        super.viewDidLoad()
        self.createMainUI()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    
    //MARK:delegate&dataSource代理和数据源
    //MARK:customMethod自定义
    func createMainUI() {
        let scrol = UIScrollView.init(frame: self.view.frame)
        scrol.bounces = false
        scrol.isPagingEnabled = true
        self.view.addSubview(scrol)
        for index in 0...3 {
            let imageView = UIImageView.init(frame: CGRect(x: CGFloat(index)*self.view.width, y: 0.0, width: self.view.width, height: self.view.height))
            imageView.backgroundColor = UIColor.randomColor()
            scrol.addSubview(imageView)
            scrol.contentSize = CGSize(width: imageView.right, height: self.view.height)
            if index == 3 {
                intoButton.frame = CGRect(x: imageView.left, y: imageView.centerY, width: imageView.width, height: imageView.height/2.0)
                intoButton.addBlock(controlEvents: UIControlEvents.touchUpInside, block: { (sender) in
                    
                    APPConstant.userDefault.set(APPConstant.currentVersion, forKey: APPConstant.bundleVersionKey)
                    
                    UIApplication.shared.keyWindow?.rootViewController = DefaultNavigation.init(rootViewController: HomePage())
                })
                scrol.addSubview(intoButton)
            }
        }
    }
}
