//
//  ViewController.swift
//  3-BMI_V3
//
//  Created by Daksh Thapar on 15/4/21.
//

import UIKit

class ViewController: UIViewController {
    // outlets
    @IBOutlet weak var button_bmi: UIButton!
    @IBOutlet weak var button_rgb: UIButton!
    @IBOutlet weak var button_web: UIButton!
    @IBOutlet weak var button_picker: UIButton!
    @IBOutlet weak var button_table: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        button_bmi.layer.cornerRadius = 15
        button_rgb.layer.cornerRadius = 15
        button_web.layer.cornerRadius = 15
        button_picker.layer.cornerRadius = 15
        button_table.layer.cornerRadius = 15
        
    }
}
