//
//  ViewController.swift
//  AnimationContrains
//
//  Created by Yurii Vients on 9/1/17.
//  Copyright © 2017 Yurii Vients. All rights reserved.
//

import UIKit
import TextFieldEffects

class ViewController: UIViewController {

    @IBOutlet weak var LeftConstraint: NSLayoutConstraint!
    var animationSuccess = false
    
    var selected = false
    @IBOutlet weak var AnView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func AnimatedView() {
        print("+++ commit 3")
       // self.view.layoutIfNeeded()
        
        UIView.animate(withDuration: 0.5, animations: {
            self.LeftConstraint.constant = self.animationSuccess ? -20 : -self.AnView.frame.size.width
        }) { (success) in
            self.animationSuccess = self.animationSuccess ? false :true
            self.view.layoutIfNeeded()
        }
    }
   
    @IBAction func ActionButton(_ sender: UIButton) {
        AnimatedView()
        print("+++ commit 4")
        
    }
    
   
}

