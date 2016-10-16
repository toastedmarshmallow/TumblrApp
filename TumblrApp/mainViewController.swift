//
//  mainViewController.swift
//  TumblrApp
//
//  Created by Shannan Hsiao on 10/15/16.
//  Copyright © 2016 Shannan Hsiao. All rights reserved.
//

import UIKit

class mainViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    
    //View Controller variables
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    //array to hold the view controllers
    var viewControllers: [UIViewController]!
    var selectedIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //accessing the main storyboard
        _ = UIStoryboard(name: "Main", bundle: nil)
        
        //instantiate each view Controller
        homeViewController = storyboard?.instantiateViewController(withIdentifier: "HomeViewController")
        searchViewController = storyboard?.instantiateViewController(withIdentifier: "SearchViewController")
        composeViewController = storyboard?.instantiateViewController(withIdentifier: "ComposeViewController")
        accountViewController = storyboard?.instantiateViewController(withIdentifier: "AccountViewController")
        trendingViewController = storyboard?.instantiateViewController(withIdentifier: "TrendingViewController")
        
        //Add each view controller to view controller array
        viewControllers = [homeViewController, searchViewController, composeViewController, accountViewController, trendingViewController]
        
        buttons[selectedIndex].isSelected = true
        didPressTab(buttons[selectedIndex])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Shared button function for tab buttons
    @IBAction func didPressTab(_ sender: UIButton) {
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        let vc = viewControllers[selectedIndex]
        
        if vc == viewControllers [2]{
            return;
        } else {
            //remove the previous view controller
            buttons[previousIndex].isSelected = false
            let previousVC = viewControllers[previousIndex]
            
            previousVC.willMove(toParentViewController: nil)
            previousVC.view.removeFromSuperview()
            previousVC.removeFromParentViewController()
            
            
            //adding new view controller and set button state
            sender.isSelected = true
            
            //if the button is compose, modally present compost View controller
            addChildViewController(vc)
            vc.view.frame = contentView.bounds
            contentView.addSubview(vc.view)
            vc.didMove(toParentViewController: self)

        }
        
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
