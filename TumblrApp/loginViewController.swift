//
//  loginViewController.swift
//  TumblrApp
//
//  Created by Shannan Hsiao on 10/16/16.
//  Copyright © 2016 Shannan Hsiao. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    var fadeTransition: FadeTransition!
    @IBOutlet weak var backgroundView: UIView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundView.alpha = 0.9
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func didPressCancel(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        _ = segue.destination
        
        // Set the modal presentation style of your destinationViewController to be custom.
        self.modalPresentationStyle = UIModalPresentationStyle.custom
        
        // Create a new instance of your fadeTransition.
        fadeTransition = FadeTransition()
        
        // Tell the destinationViewController's  transitioning delegate to look in fadeTransition for transition instructions.
        self.transitioningDelegate = fadeTransition
        
        // Adjust the transition duration. (seconds)
        fadeTransition.duration = 1.0
    }

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
