//
//  UILabel+Extension.swift
//  byqmDoctor
//
//  Created by Lyu Qiang on 2021/4/27.
//  Copyright © 2021 Yunnan Baiyao Group Medicine Electronic Business Co., Ltd. All rights reserved.
//

import Foundation
import UIKit


extension UILabel {
    static func defult(font: UIFont, textColor: UIColor) -> UILabel {
        let label = Self.init()
        label.font = font;
        label.textColor = textColor
        return label
    }

    /// 创建UILabel
    /// - Parameters:
    ///   - font: 字体
    ///   - textColor: 文字颜色
    /// - Returns: 自定义Label
    static func creatLabel(font: UIFont?, textColor: UIColor?) -> UILabel? {
        let lable = UILabel.init()
        lable.backgroundColor = .clear
        lable.font = font
        lable.textColor = textColor
        return lable
    }


    /// 根据宽度求高度
    /// - Parameters:
    ///   - text: 内容
    ///   - width: 宽度
    ///   - font: 字体
    /// - Returns: 高度
    static func getLabelHeight(text: NSString, width: CGFloat, font: CGFloat) -> CGFloat {

        let rect = text.boundingRect(with: CGSize(width: width, height: CGFloat(MAXFLOAT)), options: .usesLineFragmentOrigin, attributes: [.font:UIFont.systemFont(ofSize: font)], context: nil)
        return rect.size.height
    }
    
    


    /// 根据高度求宽度
    /// - Parameters:
    ///   - text: 内容
    ///   - height: 高度
    ///   - font: 字体
    /// - Returns: 宽度
    static func getWidth(text: NSString, height: CGFloat, font: CGFloat) -> CGFloat {

        let rect = text.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: height), options: .usesLineFragmentOrigin, attributes: [.font:UIFont.systemFont(ofSize: font)], context: nil)
        return rect.size.width
    }
}
