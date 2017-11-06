//
//  ViewController.swift
//  fifthproject
//
//  Created by Aravind Subramanian on 11/6/17.
//  Copyright © 2017 Aravind Subramanian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var MainView: UIView!
    
    @IBOutlet weak var MenuView: UIView!
    
    @IBOutlet weak var ToggleButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func ToggleButtonAction(_ sender: UIButton) {
        
        if ToggleButton.transform == .identity{
            UIView.animate(withDuration: 0.5, animations: {
                self.MainView.transform = CGAffineTransform(translationX: 150, y: 0)
                
                self.ToggleButton.transform = CGAffineTransform(rotationAngle: self.radians(degrees: 180))
            }) { (true) in
                
            }
        } else {
            UIView.animate(withDuration: 0.5, animations: {
                self.MainView.transform = .identity
               
                self.ToggleButton.transform = .identity
            }) { (true) in
            }
        }
    }
    
    func radians( degrees:Double) -> CGFloat{
        return CGFloat(degrees * .pi / degrees)
    }
    
    
}
