//
//  ViewController.swift
//  1-Hello_World
//
//  Created by Daksh Thapar on 5/4/21.
//

import UIKit

class ViewController: UIViewController {
    // Outlets
    @IBOutlet weak var label_message: UILabel!
    @IBOutlet weak var button_changeText: UIButton!
    @IBOutlet weak var segctrl_buttonBorder: UISegmentedControl!
    
    
    // Actions
    @IBAction func onTapChangeText(_ sender: Any) {
        if label_message.text == "Hello World" {
            label_message.text = "App Development"
            label_message.backgroundColor = UIColor.green
            label_message.textColor = UIColor.black
        } else if label_message.text == "App Development" {
            label_message.text = "SST ICT Dept"
            label_message.backgroundColor = UIColor.blue
            label_message.textColor = UIColor.white
        } else {
            label_message.text = "Hello World"
            label_message.backgroundColor = UIColor.red
        }
    }
    
    @IBAction func toggleButtonBorder(_ sender: Any) {
        if segctrl_buttonBorder.selectedSegmentIndex == 1 {
            button_changeText.layer.borderWidth = 2
            button_changeText.layer.cornerRadius = 15
            button_changeText.layer.borderColor = UIColor.red.cgColor
        } else {
            button_changeText.layer.borderWidth = 0
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
