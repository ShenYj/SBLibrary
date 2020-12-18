//
//  GetKeyWindowable.swift
//  SBLibrary
//
//  Created by ShenYj on 2020/12/18.
//

import UIKit

public protocol GetKeyWindowable where Self: UIResponder {
    
    /// 获取当前显示的 `window`
    ///
    /// - Note: 获取当前显示的 `window`
    ///
    var appKeyWindow: UIWindow? { get }
}

public extension GetKeyWindowable {
    
    /// 获取当前显示的 `window`
    ///
    /// - Note: 获取当前显示的 `window`
    ///
    var appKeyWindow: UIWindow? {
        if #available(iOS 13.0, *) {
            guard UIApplication.shared.connectedScenes.count > 0 else { return UIApplication.shared.delegate?.window ?? nil }
            if let keyWindow = UIApplication.shared.connectedScenes
                .filter({$0.activationState == .foregroundActive})
                .map({$0 as? UIWindowScene})
                .compactMap({$0})
                .first?.windows
                .filter({$0.isKeyWindow}).first  {
                return keyWindow
            }
            return UIApplication.shared.delegate?.window ?? nil
        }
        return UIApplication.shared.keyWindow
    }
}
