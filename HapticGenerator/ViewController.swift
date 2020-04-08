//
//  ViewController.swift
//  HapticGenerator
//
//  Created by JOEL CRAWFORD on 4/8/20.
//  Copyright © 2020 JOEL CRAWFORD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var i = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(btn)

        btn.widthAnchor.constraint(equalToConstant: 128).isActive = true
        btn.heightAnchor.constraint(equalToConstant: 128).isActive = true
        btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btn.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        btn.setTitle("Tap here!", for: .normal)
        btn.setTitleColor(UIColor.red, for: .normal)
        btn.addTarget(self, action: #selector(tapped), for: .touchUpInside)
    }

    @objc func tapped() {
        i += 1
        print("Running \(i)")

        switch i {
        case 1:
            let generator = UINotificationFeedbackGenerator()
              generator.prepare() //removes the small delay in the feedback
            generator.notificationOccurred(.error)

        case 2:
            let generator = UINotificationFeedbackGenerator()
              generator.prepare() //removes the small delay in the feedback
            generator.notificationOccurred(.success)

        case 3:
            let generator = UINotificationFeedbackGenerator()
              generator.prepare() //removes the small delay in the feedback
            generator.notificationOccurred(.warning)

        case 4:
            let generator = UIImpactFeedbackGenerator(style: .light)
            generator.impactOccurred()

        case 5:
            let generator = UIImpactFeedbackGenerator(style: .medium)
            generator.prepare() //removes the small delay in the feedback
            generator.impactOccurred()

        case 6:
            let generator = UIImpactFeedbackGenerator(style: .heavy)
              generator.prepare() //removes the small delay in the feedback
            generator.impactOccurred()

        default:
            let generator = UISelectionFeedbackGenerator()
              generator.prepare() //removes the small delay in the feedback
            generator.selectionChanged()
            i = 0
        }
    }
}
