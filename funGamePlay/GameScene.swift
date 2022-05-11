import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {

var ball: SKSpriteNode!
let cam = SKCameraNode()
    
override func sceneDidLoad() {

    ball = self.childNode(withName: "ball") as! SKSpriteNode
    self.camera = cam
    
    physicsWorld.contactDelegate = self
    
    
}
    
override func update(_ currentTime: TimeInterval) {
    cam.position = ball.position
    
}
    
    
    func jump(){
    
        ball.physicsBody?.velocity = CGVector(dx: 500.0, dy: 500.0)
        
    }
    
  
   
    
    func didBegin(_ contact: SKPhysicsContact) {
        print("collided")
        var blah = ball.physicsBody
        ball.physicsBody = nil
        ball.position = CGPoint(x: -592, y: 200)
        ball.physicsBody = blah
    }
    
    
    
}
