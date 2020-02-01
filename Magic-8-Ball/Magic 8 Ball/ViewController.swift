//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ballImage: UIImageView!
    @IBOutlet weak var askLable: UILabel!
    
    let ballArray = [#imageLiteral(resourceName: "magic-ball-png-1"),#imageLiteral(resourceName: "magic-ball-png-2"),#imageLiteral(resourceName: "magic-ball-png-3"),#imageLiteral(resourceName: "magic-ball-png-4"),#imageLiteral(resourceName: "magic-ball-png-5"),#imageLiteral(resourceName: "magic-ball-png-6"),#imageLiteral(resourceName: "magic-ball-png-7"),#imageLiteral(resourceName: "magic-ball-png-8"),#imageLiteral(resourceName: "magic-ball-png-9"),#imageLiteral(resourceName: "magic-ball-png-10"),#imageLiteral(resourceName: "magic-ball-png-11"),#imageLiteral(resourceName: "magic-ball-png-12"),#imageLiteral(resourceName: "magic-ball-png-13"),#imageLiteral(resourceName: "magic-ball-png-14"),#imageLiteral(resourceName: "magic-ball-png-15"),#imageLiteral(resourceName: "magic-ball-png-16"),#imageLiteral(resourceName: "magic-ball-png-17"),#imageLiteral(resourceName: "magic-ball-png-18"),#imageLiteral(resourceName: "magic-ball-png-19"),#imageLiteral(resourceName: "magic-ball-png-20")]

    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        ballImage.shake(duration: 0.5, values: [-18.0, 18.0, -18.0, 18.0, -9.0, 9.0, -6.0, 6.0, 2.0])
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) { // Change `2.0` to the desired number of seconds.
            self.ballImage.image = self.ballArray.randomElement()
            self.askLable.text = "Ask Me Again"
        }
       
//        print("the image is \(ballArray[count])")
    }

}

