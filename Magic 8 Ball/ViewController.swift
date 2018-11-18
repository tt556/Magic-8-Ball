//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by 神崎泰旗 on 2018/11/18.
//  Copyright © 2018 taiki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5", ]
    
    var randomBallNumber = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
        
    }
    
    func newBallImage() {
        
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        newBallImage()
        
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        
        newBallImage()
        
    }
    
}

