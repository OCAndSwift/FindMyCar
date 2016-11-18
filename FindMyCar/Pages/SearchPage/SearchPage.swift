//
//  SearchPage.swift
//  whereIsMyCar
//
//  Created by Mac on 16/11/18.
//  Copyright © 2016年 Blin. All rights reserved.
//

import Foundation
import UIKit
class SearchPage: ChildPage {
    //MARK:property属性
    //MARK:system系统
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.white
        self.automaticallyAdjustsScrollViewInsets = false
        super.viewDidLoad()
        self.title = "寻找我的车"
        self.createMainUI()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    
    //MARK:delegate&dataSource代理和数据源
    //MARK:customMethod自定义
    func createMainUI() {
        
    }
}
