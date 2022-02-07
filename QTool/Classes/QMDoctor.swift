//
//  QMDoctorWrapper.swift
//  byqmDoctor
//
//  Created by Lyu Qiang on 2021/4/22.
//  Copyright © 2021 Yunnan Baiyao Group Medicine Electronic Business Co., Ltd. All rights reserved.
//

import Foundation

/// Wrapper for QMDoctor compatible types. This type provides an extension point for
/// connivence methods in Kingfisher.
public struct QMDoctorWrapper<Base> {
    public let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

/// Represents an object type that is compatible with QMDoctor. You can use `qm` property to get a
/// value in the namespace of Kingfisher.
public protocol QMDoctorCompatible: AnyObject {}

/// Represents a value type that is compatible with Kingfisher. You can use `qm` property to get a
/// value in the namespace of Kingfisher.
public protocol QMDoctorCompatibleValue {}

public extension QMDoctorCompatible {
    /// Gets a namespace holder for QMDoctor compatible types.
    var qm: QMDoctorWrapper<Self> {
        get { return QMDoctorWrapper(self) }
        set {}
    }
}

public extension QMDoctorCompatibleValue {
    /// Gets a namespace holder for QMDoctor compatible types.
    var qm: QMDoctorWrapper<Self> {
        get { return QMDoctorWrapper(self) }
        set {}
    }
}

extension UIScrollView: QMDoctorCompatible {}
