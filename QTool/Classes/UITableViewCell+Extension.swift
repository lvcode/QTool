//
//  UITableViewCell+Extension.swift
//  byqmDoctor
//
//  Created by Lyu Qiang on 2021/5/7.
//  Copyright © 2021 Yunnan Baiyao Group Medicine Electronic Business Co., Ltd. All rights reserved.
//

import Foundation


extension UITableViewCell {
    
    /// 隐藏分割线
    func hideSeparator() {
        subviews.forEach { view in
            if type(of: view).description() == "_UITableViewCellSeparatorView" {
                view.isHidden = true
            }
        }
    }
    ///显示分割线
    func showSeparator() {
        subviews.forEach { view in
            if type(of: view).description() == "_UITableViewCellSeparatorView" {
                view.isHidden = false
            }
        }
    }
}
