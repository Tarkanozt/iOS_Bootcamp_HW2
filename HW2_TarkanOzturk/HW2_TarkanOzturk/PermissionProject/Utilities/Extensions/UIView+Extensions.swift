//
//  UIView+Extensions.swift
//  PermissionProject
//
//  Created by Emircan Aydın on 2.10.2021.
//

import UIKit

// MARK: - Animation Extensions -
extension UIView {

    public func startPressedAnimationCommon(withDuration: CGFloat = 0.3, completion: @escaping (_ finish: Bool) -> Void) {

        self.transform = CGAffineTransform(scaleX: 0.95, y: 0.95) // buton view is smaller
        UIView.animate(withDuration: TimeInterval(withDuration),
                       delay: 0,
                       usingSpringWithDamping: CGFloat(0.8),  // the bigger the ratio, the bigger the action will be
            initialSpringVelocity: CGFloat(6.0),    // the bigger it gets the faster will be
            options: UIView.AnimationOptions.allowUserInteraction,
            animations: {

                self.transform = CGAffineTransform.identity

        }, completion: completion)

        self.layoutIfNeeded()
    }
    
}
