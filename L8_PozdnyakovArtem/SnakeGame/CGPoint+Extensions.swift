//
//  CGPoint+Extensions.swift
//  SnakeGame
//
//  Created by artem Pozdnyakov on 30/10/2019.
//  Copyright © 2019 Artem Pozdnyakov. All rights reserved.
//

import UIKit

extension CGPoint {

    func relative(to frame: CGRect) -> CGPoint {
        return CGPoint(x: frame.origin.x + x, y: frame.origin.y + y)
    }
}
