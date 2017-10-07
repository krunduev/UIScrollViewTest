//
//  ViewController.swift
//  UIScrollViewTest
//
//  Created by Kostyantyn Runduyev on 10/7/17.
//  Copyright © 2017 CuriousIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        scrollView.contentSize = CGSize(width: scrollView.frame.width, height: 1500)
        
        let someView = UIView()
        someView.frame = CGRect(x: scrollView.frame.width / 2 - 10, y: 1000, width: 20, height: 30)
        scrollView.addSubview(someView)
        someView.backgroundColor = UIColor.red
        
        let upperLevtOfVisible: CGPoint = scrollView.contentOffset
        print("\(upperLevtOfVisible)")
        
        let visibleRect: CGRect = someView.convert(scrollView.bounds, from: scrollView)
        print("\(scrollView.bounds)")
        print("\(someView.convert(scrollView.bounds, from: scrollView))")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

