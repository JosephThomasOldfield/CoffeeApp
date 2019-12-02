//
//  AnimatedTabBarController.swift
//  Cough-E
//
//  Created by Code Nation on 27/11/2019.
//  Copyright © 2019 Code Nation. All rights reserved.
//


import UIKit

var mainTC = AnimatedTabBarController()



class AnimatedTabBarController: UITabBarController {
var countItems = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
    @IBOutlet weak var navbar: UITabBar!

    func addBasket() {
        if (countItems == 0){
        print("first instance")
        countItems += 1
        }
        else {
            countItems += 1
            tabBarItem.badgeValue = String(countItems)
        }
    }

}

// MARK: - UITabBarControllerDelegate
extension AnimatedTabBarController: UITabBarControllerDelegate {

    /*
     Called to allow the delegate to return a UIViewControllerAnimatedTransitioning delegate object for use during a noninteractive tab bar view controller transition.
     ref: https://developer.apple.com/documentation/uikit/uitabbarcontrollerdelegate/1621167-tabbarcontroller
     */
    func tabBarController(_ tabBarController: UITabBarController, animationControllerForTransitionFrom fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return TabBarAnimatedTransitioning()
    }

}

/*
 UIViewControllerAnimatedTransitioning
 A set of methods for implementing the animations for a custom view controller transition.
 ref: https://developer.apple.com/documentation/uikit/uiviewcontrolleranimatedtransitioning
 */
final class TabBarAnimatedTransitioning: NSObject, UIViewControllerAnimatedTransitioning {

    /*
     Tells your animator object to perform the transition animations.
     */
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard let destination = transitionContext.view(forKey: UITransitionContextViewKey.to) else { return }

        destination.alpha = 0.0
        destination.transform = .init(scaleX: 1.5, y: 1.5)
        transitionContext.containerView.addSubview(destination)

        UIView.animate(withDuration: transitionDuration(using: transitionContext), animations: {
            destination.alpha = 1.0
            destination.transform = .identity
        }, completion: { transitionContext.completeTransition($0) })
    }

    /*
     Asks your animator object for the duration (in seconds) of the transition animation.
     */
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.25
    }

}
