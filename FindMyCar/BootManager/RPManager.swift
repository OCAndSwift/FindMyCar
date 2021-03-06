//
//  RPManager.swift
//  whereIsMyCar
//
//  Created by Mac on 16/11/18.
//  Copyright © 2016年 Blin. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation


/// 用于记录位置的工具
class RPManager: NSObject,CLLocationManagerDelegate {
    
    //MARK:properties
    var locationManager : CLLocationManager = CLLocationManager()
    
    override init() {
        super.init()
    }
    
    public func updateLocation(update:Bool) {
        if update == false {return}
        if CLLocationManager.locationServicesEnabled() == false && CLLocationManager.authorizationStatus() ==  CLAuthorizationStatus.denied{
            print("请设置软件的定位")
            locationManager.requestWhenInUseAuthorization()
        }else if CLLocationManager.authorizationStatus() ==  CLAuthorizationStatus.authorizedWhenInUse {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.distanceFilter = CLLocationDistance(floatLiteral: 10)//设置定位精度
            locationManager.pausesLocationUpdatesAutomatically = false
            locationManager.startMonitoringSignificantLocationChanges()
//            if #available(iOS 9.0, *) {
//                locationManager.allowsBackgroundLocationUpdates = true
//            }
            locationManager.startUpdatingLocation()
            print("\(locationManager)")
            //启动定位服务
            print("开始定位")
        }
    }
    
    //MARK: Delegate&DataSource

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("获得定位")
        guard let location = locations.last else {
            return
        }
        print("经度:\(location.coordinate.longitude)纬度\(location.coordinate.latitude)海拔\(location.altitude)方向\(location.course)速度\(location.speed)")
        locationManager.stopUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
         print("\(error.localizedDescription)")
    }
}
