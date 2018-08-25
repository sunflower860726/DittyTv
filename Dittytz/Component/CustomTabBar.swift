//
//  CustomTabBar.swift
//  Dittytz
//
//  Created by admin on 8/25/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class CustomTabBar: UITabBar {

    @IBInspectable var height: CGFloat = 0.0
    
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        var sizeThatFits = super.sizeThatFits(size)
        if height > 0.0 {
            sizeThatFits.height = height
        }
        return sizeThatFits
    }

}
