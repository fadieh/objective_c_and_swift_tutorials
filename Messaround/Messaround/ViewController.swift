//
//  ViewController.swift
//  Messaround
//
//  Created by Fadie on 27/11/2014.
//  Copyright (c) 2014 fadcorp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollisionBehaviorDelegate {

    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!
    var collision: UICollisionBehavior!
    var square: UIView!
    var snap: UISnapBehavior!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        square = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        square.backgroundColor = UIColor.grayColor()
        view.addSubview(square)
        let barrier = UIView(frame: CGRect(x: 0, y: 300, width: 120, height: 10))
        barrier.backgroundColor = UIColor.redColor()
        view.addSubview(barrier)
        animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior(items: [square])
        animator.addBehavior(gravity)
        collision = UICollisionBehavior(items: [square])
//        adding boundary with same frame as the barrier
        collision.addBoundaryWithIdentifier("barrier", forPath: UIBezierPath(rect: barrier.frame))
        collision.translatesReferenceBoundsIntoBoundary = true
        collision.collisionDelegate = self
        animator.addBehavior(collision)
        let itemBehavior = UIDynamicItemBehavior(items: [square])
        itemBehavior.elasticity = 0.8
        animator.addBehavior(itemBehavior)
    }
    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        if (snap != nil) {
            animator.removeBehavior(snap)
        }
        
        let touch = touches.anyObject() as UITouch
        snap = UISnapBehavior(item: square, snapToPoint: touch.locationInView(view))
        animator.addBehavior(snap)
    }
    
    func collisionBehavior(behavior: UICollisionBehavior!, beganContactForItem item: UIDynamicItem!,
        withBoundaryIdentifier identifier: NSCopying!, atPoint p: CGPoint) {
            println("Boundary contact occurred - \(identifier)")
            let collidingView = item as UIView
            collidingView.backgroundColor = UIColor.yellowColor()
            UIView.animateWithDuration(0.3) {
                collidingView.backgroundColor = UIColor.grayColor()
            }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

