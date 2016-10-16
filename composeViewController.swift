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
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    
    //array to hold the buttons
    var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundView.alpha = 0.9
        
        //put the buttons in an array
        buttons = [photoButton, quoteButton, chatButton, textButton,  linkButton,  videoButton]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressButton(_ sender: UIButton) {
        
        print("button press")
        
        UIButton.animateKeyframes(withDuration: 1.0, delay: 0.1, options: [UIViewKeyframeAnimationOptions.calculationModeCubic], animations:
            {
                UIButton.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1/6, animations:{ self.self.photoButton.transform = CGAffineTransform(translationX: 0, y: -800)
                    self.photoButton.alpha = 0
                })
                UIButton.addKeyframe(withRelativeStartTime: 1/6, relativeDuration: 1/6, animations:{ self.quoteButton.transform = CGAffineTransform(translationX: 0, y: -800)
                    self.quoteButton.alpha = 0
                })
                UIButton.addKeyframe(withRelativeStartTime: 2/6, relativeDuration: 1/6, animations:{ self.chatButton.transform = CGAffineTransform(translationX: 0, y: -800)
                    self.chatButton.alpha = 0
                })
                UIButton.addKeyframe(withRelativeStartTime: 3/6, relativeDuration: 1/6, animations:{ self.textButton.transform = CGAffineTransform(translationX: 0, y: -800)
                    self.textButton.alpha = 0
                })
                UIButton.addKeyframe(withRelativeStartTime: 4/6, relativeDuration: 1/6, animations:{ self.linkButton.transform = CGAffineTransform(translationX: 0, y: -800)
                    self.linkButton.alpha = 0
                })
                UIButton.addKeyframe(withRelativeStartTime: 5/6, relativeDuration: 1/6, animations:{ self.videoButton.transform = CGAffineTransform(translationX: 0, y: -800)
                    self.videoButton.alpha = 0
                })
                
            }, completion: {finished in self.dismiss(animated: true, completion: nil)})
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        //For loop to go through the buttons and move them off screen
        for i in buttons{
            i.alpha = 1
            i.transform = CGAffineTransform(translationX: 0, y: 800)
        }
        
        print("viewWillAppear")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        
        //create type UI button
        var _: UIButton
            
            UIButton.animateKeyframes(withDuration: 1.2, delay: 0.1, options: [UIViewKeyframeAnimationOptions.calculationModeCubic], animations:
                {
                    UIButton.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1/6, animations:{ self.photoButton.transform = CGAffineTransform.identity
                    })
                    UIButton.addKeyframe(withRelativeStartTime: 1/6, relativeDuration: 1/6, animations:{ self.quoteButton.transform = CGAffineTransform.identity
                    })
                    UIButton.addKeyframe(withRelativeStartTime: 2/6, relativeDuration: 1/6, animations:{ self.chatButton.transform = CGAffineTransform.identity
                    })
                    UIButton.addKeyframe(withRelativeStartTime: 3/6, relativeDuration: 1/6, animations:{ self.textButton.transform = CGAffineTransform.identity
                    })
                    UIButton.addKeyframe(withRelativeStartTime: 4/6, relativeDuration: 1/6, animations:{ self.linkButton.transform = CGAffineTransform.identity
                    })
                    UIButton.addKeyframe(withRelativeStartTime: 5/6, relativeDuration: 1/6, animations:{ self.videoButton.transform = CGAffineTransform.identity
                    })
                
                }, completion: {finished in})
        
          print("viewDidAppear")
        
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
