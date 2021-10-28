//
//  infoVC.swift
//  3-BMI_V3
//
//  Created by Daksh Thapar on 20/4/21.
//

import UIKit

class infoVC: UIViewController {
    var selectedRow: Int?
    let pd = data()
    
    // outlets
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var textview: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = pd.pokemon[selectedRow!]
        imageview.image = UIImage(named: pd.image[selectedRow!])
        textview.text = pd.info[selectedRow!]
    }
}
