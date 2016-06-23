//
//  ViewController.swift
//  chodzącyScrollView
//
//  Created by Kamil Wójcik on 05.06.2016.
//  Copyright © 2016 Kamil Wójcik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    let szerokość: CGFloat = 143
    let wysokość: CGFloat = 248
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for var x = 1; x <= 19; x++ {
            let img = UIImage(named: "\(x)")
            let imgView = UIImageView(image: img)
            
            scrollView.addSubview(imgView)
            //scrollView.insertSubview(img, aboveSubview: imgView) nie wiem jak wsadzić spacera

            //imgView.frame = CGRectMake(-szerokość + (szerokość * CGFloat(x)), 290, szerokość, wysokość)
            imgView.frame = CGRectMake(-20 + szerokość * CGFloat(x), 335, szerokość, wysokość)
        }
                                        //szerokość ttuaj razy liczba naszych postaci
        scrollView.contentSize = CGSizeMake(szerokość * 22 + 30, scrollView.frame.size.height)//scrollview ustawia taką samą wysokosć jaka była
    }

}

