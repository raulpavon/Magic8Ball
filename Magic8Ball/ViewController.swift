//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Raúl Pavón on 28/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        imageView.image = #imageLiteral(resourceName: "ball3")
        //imageView.image = UIImage(named: "ball3")
        imageView.image = ballArray.randomElement()
        //imageView.image = ballArray[Int.random(in: 0...ballArray.count - 1)]
    }
}

