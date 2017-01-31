//
//  ViewController.swift
//  UIMotionEffect
//
//  Created by James Jongsurasithiwat on 1/31/17.
//  Copyright © 2017 James Jongs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    let leftRightMin: CGFloat = -600.0
    let leftRightMax: CGFloat = 600.0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // Motion Effect
        let leftRight: UIInterpolatingMotionEffect = UIInterpolatingMotionEffect(
            keyPath: "center.x",
            type: .tiltAlongHorizontalAxis)
        leftRight.minimumRelativeValue = leftRightMin
        leftRight.maximumRelativeValue = leftRightMax

        // Create motion effect group
        let meGroup: UIMotionEffectGroup = UIMotionEffectGroup()
        meGroup.motionEffects = [leftRight]

        // Add group to ImageView
        imageView.addMotionEffect(meGroup)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

