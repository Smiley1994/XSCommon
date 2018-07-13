//
//  XSExtension+UI.swift
//  XSExtension
//
//  Created by 晓松 on 2018/5/23.
//  Copyright © 2018年 ciyuanmengdongli. All rights reserved.
//

import Foundation
import UIKit

/**
 可以在cell 内部获取cell 的父视图（UITableView && UICollectionView）
 */

extension UITableViewCell {
    
    func superTableView() -> UITableView? {
        for view in sequence(first: self.superview, next: { $0?.superview }) {
            if let tableView = view as? UITableView {
                return tableView
            }
        }
        return nil
    }
}

extension UICollectionViewCell {
    func superCollectionView() -> UICollectionView? {
        for view in sequence(first: self.superview, next: { $0?.superview }) {
            if let tableView = view as? UICollectionView {
                return tableView
            }
        }
        return nil
    }
}


extension UIImage {
    /**
     *  重设图片大小
     */
    func reSizeImage(reSize:CGSize)->UIImage {
        UIGraphicsBeginImageContextWithOptions(reSize,false,UIScreen.main.scale);
        self.draw(in: CGRect(x: 0, y: 0, width: reSize.width, height: reSize.height))
        let reSizeImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!;
        UIGraphicsEndImageContext();
        return reSizeImage;
    }
}


extension UIColor {
    /**
     *  随机颜色
     */
    public class var randomColor: UIColor {
        get {
            let red = CGFloat(arc4random()%256)/255.0
            let green = CGFloat(arc4random()%256)/255.0
            let blue = CGFloat(arc4random()%256)/255.0
            return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        }
    }
    
    public class func hexColor(hexString: String, alpha: CGFloat? = 1.0) -> UIColor {
        
        var cString = hexString.trimmingCharacters(in:.whitespacesAndNewlines).uppercased()
        if (cString.hasPrefix("#")) {
            cString = String(cString[cString.index(after: cString.startIndex)..<cString.endIndex])
            
        }
        if (cString.count != 6) {
            return UIColor.clear
        }
        let rString = cString[..<cString.index(cString.startIndex, offsetBy: 2)]
        let gString = cString[cString.index(cString.startIndex, offsetBy: 2)..<cString.index(cString.startIndex, offsetBy: 4)]
        
        let bString = cString[cString.index(cString.endIndex, offsetBy: -2)..<cString.endIndex]
        
        var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
        Scanner(string: String(rString)).scanHexInt32(&r)
        Scanner(string: String(gString)).scanHexInt32(&g)
        Scanner(string: String(bString)).scanHexInt32(&b)
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: alpha!)
    }
    
}
