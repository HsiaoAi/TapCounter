//
//  ViewController.swift
//  TapCounter
//
//  Created by Short Lee on 28/07/2017.
//  Copyright © 2017 Short Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!

    override func willTransition(to newCollection: UITraitCollection, with zcoordinator: UIViewControllerTransitionCoordinator) {
            if(UIDevice.current.orientation.isPortrait) {
                backgroundImage.image = UIImage(named: "bg_portrait.png")
            } else {
               backgroundImage.image = UIImage(named: "bg_landscape.png")
        }
    }

    var newCounter: Bool = true

    private var brain = tapCounterBrain()

    @IBOutlet weak var numberDisplay: UILabel!

    @IBAction func touchTap(_ sender: UIButton) {
        brain.addNumbers()
        if let result = brain.result {
            numberDisplay.text = String(result)
        }
    }

    func reset() {
        brain = tapCounterBrain()
        numberDisplay.text = "0"
    }

    @IBAction func touchReset(_ sender: UIButton) {
        reset()
    }

    @IBOutlet var superView: UIView! {
        didSet {
            let swipeUpRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(reset))
            swipeUpRecognizer.direction = .up
            superView.addGestureRecognizer(swipeUpRecognizer)
        }
    }

}
