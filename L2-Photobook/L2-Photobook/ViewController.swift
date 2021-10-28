//
//  ViewController.swift
//  L2-Photobook
//
//  Created by Daksh Thapar on 7/4/21.
//

import UIKit

class ViewController: UIViewController {
    // Variables
    var arrPN = ["1.jpg","2.jpg","3.jpg","4.jpg","5.jpg"]
    var arrLC = ["Pic 1, Pic 2, Pic 3, Pic 4, Pic 5"]
    var cur = 0
    
    
    // Outlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label_caption: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    // Actions
    @IBAction func scrollPhotos(_ sender: Any) {
        cur = pageControl.currentPage
        imageView.image = UIImage(named: arrPN[cur])
        label_caption.text = arrLC[cur]
    }
    
    @IBAction func forward(_ sender: Any) {
        if cur < arrPN.count - 1 {
            cur = cur + 1
            pageControl.currentPage = cur
            imageView.image = UIImage(named: arrPN[cur])
            label_caption.text = arrLC[cur]
        }
    }
    
    @IBAction func backward(_ sender: Any) {
        if cur > 0 {
            cur = cur - 1
            pageControl.currentPage = cur
            imageView.image = UIImage(named: arrPN[cur])
            label_caption.text = arrLC[cur]
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = arrPN.count
        imageView.image = UIImage(named: arrPN[cur])
        label_caption.text = arrLC[cur]
        
        // Swipe Gestures
        let swipeL = UISwipeGestureRecognizer(target: self, action: #selector(forward(_:)))
        swipeL.direction = .left
        self.view.addGestureRecognizer(swipeL)
        
        let swipeR = UISwipeGestureRecognizer(target: self, action: #selector(backward(_:)))
        swipeR.direction = .right
        self.view.addGestureRecognizer(swipeR)
    }
}
