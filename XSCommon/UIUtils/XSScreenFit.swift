//
//  XSScreenFit.swift
//  XSCommon
//
//  Created by 晓松 on 2019/1/18.
//  Copyright © 2019 GoodMorning. All rights reserved.
//

import Foundation

/*
 * 以6S 7 8 为基础 的屏幕比例
 */

let deviceType = XSFitDevice.iphoneType()

public func percentageWithScreenWidth() -> CGFloat{
    
    print("deviceType === ", deviceType)
    
    if  deviceType == "iPhone4" || deviceType == "iPhone4S" || deviceType == "iPhone5" || deviceType == "iPhone5S" {
        return 0.853
        
    } else if deviceType == "iPhone6" || deviceType == "iPhone6S" || deviceType == "iPhone7" || deviceType == "iPhone8"{
        return 1.000
        
    } else if deviceType == "iPhone6Plus" || deviceType == "iPhone6SPlus" || deviceType == "iPhone7Plus" || deviceType == "iPhone8Plus" || deviceType == "iPhoneXR" || deviceType == "iPhoneXSMax"{
        return 1.104
        
    } else if deviceType == "iPhoneX" || deviceType == "iPhoneXS" {
        return 1.000
        
    } else {
        return 1.0
    }
}

public func percentageWithScreenHeight() -> CGFloat{
    
    print("deviceType === ", deviceType)
    
    if  deviceType == "iPhone4" || deviceType == "iPhone4S" {
        return 0.719
        
    } else if deviceType == "iPhone5" || deviceType == "iPhone5S" {
        return 0.851
        
    } else if deviceType == "iPhone6" || deviceType == "iPhone6S" || deviceType == "iPhone7" || deviceType == "iPhone8"{
        return 1.000
        
    } else if deviceType == "iPhone6Plus" || deviceType == "iPhone6SPlus" || deviceType == "iPhone7Plus" || deviceType == "iPhone8Plus"{
        return 1.103
        
    } else if deviceType == "iPhoneX" || deviceType == "iPhoneXS" {
        return 1.217
        
    } else if deviceType == "iPhoneXR" || deviceType == "iPhoneXSMax" {
        return 1.343
    } else {
        
        return 1.0
    }
}
