//
//  UIStoryboard.swift
//  SSRLabTest3
//
//  Created by Иван Селюк on 20.07.22.
//

import UIKit

extension UIViewController {
    static var getInstanceController: UIViewController? {
        return UIStoryboard(name: String(describing: self), bundle: nil).instantiateInitialViewController()
    }
}

