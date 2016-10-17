//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    @IBOutlet weak var bonjoviImage: UIImageView!
    
    
    var originalHeightConstant: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bonjoviImage.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func imageTapped(_ sender: UITapGestureRecognizer) {
            UIView.animateKeyframes(withDuration: 2.0, delay: 0.0, options: [.calculationModeLinear, .autoreverse], animations: {
            
                UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: (0.3), animations: {
                   //Shrink slightly below the starting height.
                   self.bonjoviImage.transform = CGAffineTransform(scaleX: 1.0, y: 0.75)
                 })
           
                UIView.addKeyframe(withRelativeStartTime: (1/3.0), relativeDuration: 0.3, animations: {
                    //Grow slightly beyond the height of the screen.
                    self.bonjoviImage.transform = CGAffineTransform(scaleX: 1.0, y: 2.5)
                })
                
                UIView.addKeyframe(withRelativeStartTime: (1/3.0), relativeDuration: 0.4, animations: {
                    //the height shrinks a little
                    self.bonjoviImage.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                })
            })
    
        self.bonjoviImage.layoutIfNeeded()
    }
}











