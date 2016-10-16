//
//  composeViewController.swift
//  TumblrApp
//
//  Created by Shannan Hsiao on 10/15/16.
//  Copyright © 2016 Shannan Hsiao. All rights reserved.
//

import UIKit

class composeViewController: UIViewController {

    @IBOutlet weak var nevermindButton: UIButton!
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
    
    @IBAction func didPressButton(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
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
