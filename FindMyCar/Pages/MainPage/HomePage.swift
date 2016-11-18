//
//  HomePage.swift
//  whereIsMyCar
//
//  Created by Mac on 16/11/18.
//  Copyright © 2016年 Blin. All rights reserved.
//

import Foundation
import UIKit
class HomePage: UIViewController {
    //MARK:property属性
    let parkButton:UIButton = UIButton.init()
    let searchButton:UIButton = UIButton.init()
    //MARK:system系统
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.white
        self.automaticallyAdjustsScrollViewInsets = false
        super.viewDidLoad()
        self.title = APPConstant.AppName
        self.createMainUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    
    //MARK:delegate&dataSource代理和数据源
    //MARK:customMethod自定义
    func createMainUI() {
        let bounds:CGRect = CGRect(x: 0.0, y: 0.0, width: self.view.width-40.0, height: self.view.height/2.0-40.0)
        parkButton.bounds = bounds
        parkButton.bottom = self.view.centerY-20.0
        parkButton.centerX = self.view.centerX
        parkButton.setTitle("park", for: .normal)
        parkButton.backgroundColor = UIColor.randomColor()
        self.view.addSubview(parkButton)
        
        parkButton.addBlock(controlEvents: .touchUpInside) { (sender) in
            self.push(ParkPage(), animated: true)
        }
        
        searchButton.bounds = bounds
        searchButton.top = self.view.centerY+20.0
        searchButton.centerX = self.view.centerX
        searchButton.setTitle("search", for: .normal)
        searchButton.backgroundColor = UIColor.randomColor()
        self.view.addSubview(searchButton)
        searchButton.addBlock(controlEvents: .touchUpInside) { (sender) in
            self.push(SearchPage(), animated: true)
        }
        
    }
    
    
    func push(_ page:UIViewController, animated:Bool) {
        guard let nav = self.navigationController else {
            return
        }
        nav.pushViewController(page, animated: animated)
    }
}
