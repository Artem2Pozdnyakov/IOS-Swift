//
//  GameViewController.swift
//  SnakeGame
//
//  Created by artem Pozdnyakov on 30/10/2019.
//  Copyright © 2019 Artem Pozdnyakov. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        setup()
    }

    private func setup() {
        guard let skView = view as? SKView else {
            return
        }

        let scene = GameScene(size: view.bounds.size)
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .resizeFill
        skView.presentScene(scene)
    }
}
