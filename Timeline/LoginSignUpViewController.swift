//
//  LoginSignUpViewController.swift
//  Timeline
//
//  Created by Alex Retter on 2/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class LoginSignUpViewController: UIViewController {
    
    enum ViewMode {
        
        case Login
        
        case Signup
        
        case Edit
    }

    @IBOutlet weak var actionButtonText: UIButton!
    
    @IBOutlet weak var username: UITextField!

    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var bio: UITextField!
    
    @IBOutlet weak var website: UITextField!
    
    @IBAction func action(sender: AnyObject) {
        
        
    }
    
    var viewMode = ViewMode.Signup
    var fieldsAreValid: Bool {
        get {
            switch viewMode {
            case .Login:
                return !(email.text!.isEmpty || password.text!.isEmpty)
            case .Signup:
                return !(username.text!.isEmpty || email.text!.isEmpty || password.text!.isEmpty)
            case .Edit:
                return !(username.text!.isEmpty)
            }
        }
    }
    
    //// WHY DID THIS HAVE TO GO HERE
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViewBasedOnMode()


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateViewBasedOnMode() {
        switch viewMode {
        case .Login:
            username.hidden = true
            bio.hidden = true
            website.hidden = true
            
            actionButtonText.setTitle("Login", forState: .Normal)
        case .Signup:
            actionButtonText.setTitle("Signup", forState: .Normal)
            
        case .Edit:
            actionButtonText.setTitle("Update", forState: .Normal)
            
        }
    }


    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
