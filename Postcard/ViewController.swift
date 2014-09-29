//
//  ViewController.swift
//  Postcard
//
//  Created by Raymond Lei on 2014-09-26.
//  Copyright (c) 2014 Raymond Lei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var textEnterName: UITextField!
    @IBOutlet weak var textEnterMessage: UITextField!
    @IBOutlet weak var buttonSendMail: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonSendMailPressed(sender: UIButton) {
        // Adding a comment here
        labelMessage.hidden = false
        labelMessage.text = textEnterMessage.text
        labelMessage.textColor = UIColor.redColor()

        labelName.hidden = false
        labelName.text = textEnterName.text
        labelName.textColor = UIColor.blueColor()
        
        textEnterName.text = ""
        textEnterName.resignFirstResponder()
        
        textEnterMessage.text = ""
        textEnterMessage.resignFirstResponder()
        
        buttonSendMail.setTitle("Mail Sent", forState : UIControlState.Normal)
    }

}

