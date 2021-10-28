//
//  rgbVC.swift
//  3-BMI_V3
//
//  Created by Daksh Thapar on 20/4/21.
//

import UIKit

class rgbVC: UIViewController {
    // Outlets
    @IBOutlet weak var slider_R: UISlider!
    @IBOutlet weak var slider_G: UISlider!
    @IBOutlet weak var slider_B: UISlider!
    
    
    // Actions
    @IBAction func change_bg_colour(_ sender: Any) {
        self.view.backgroundColor = UIColor(red: CGFloat(slider_R.value / 255),
                                            green: CGFloat(slider_G.value / 255),
                                            blue: CGFloat(slider_B.value / 255),
                                            alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Colour Slider"
        self.view.backgroundColor = UIColor.black
    }
}
