//
//  GameViewController.swift
//  funGamePlay
//
//  Created by amelia klebba on 5/3/22.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    var play: GameScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
                    UIDevice.current.setValue(value, forKey: "orientation")

        if let scene = GKScene(fileNamed: "GameScene") {
            if let sceneNode = scene.rootNode as! GameScene? {
                play = sceneNode
                sceneNode.scaleMode = .aspectFill
                if let view = self.view as! SKView? {
                    view.presentScene(sceneNode)
                    view.ignoresSiblingOrder = true
                    view.showsFPS = true
                    view.showsNodeCount = true
                }
                }
                }
    }

    override var shouldAutorotate: Bool {
    return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
    return .landscapeRight
    }

    override var prefersStatusBarHidden: Bool {
    return true
    }




    @IBAction func buttonFun(_ sender: Any) {
    play.jump()
    }
    


}
