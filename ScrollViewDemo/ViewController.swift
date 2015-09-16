//
//  ViewController.swift
//  ScrollViewDemo
//
//  Created by YuanFang on 15/9/14.
//  Copyright (c) 2015年 YuanFang. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scrollView.delegate = self
        scrollView.backgroundColor = UIColor.yellowColor()
        scrollView.contentSize = CGSize(width: 4*750/2, height: 1334/2)
        
        var aView = UIView(frame: CGRect(x: 0*750/2, y: 0, width: 750/2, height: 1334/2))
        aView.backgroundColor = UIColor.greenColor()
        scrollView.addSubview(aView)
        
        var bView = UIView(frame: CGRect(x: 1*750/2, y: 0, width: 750/2, height: 1334/2))
        bView.backgroundColor = UIColor.blackColor()
        scrollView.addSubview(bView)
        
        var cView = UIView(frame: CGRect(x: 2*750/2, y: 0, width: 750/2, height: 1334/2))
        cView.backgroundColor = UIColor.redColor()
        scrollView.addSubview(cView)
        
        var dView = UIView(frame: CGRect(x: 3*750/2, y: 0, width: 750/2, height: 1334/2))
        dView.backgroundColor = UIColor.blueColor()
        
        scrollView.addSubview(dView)
        
        
        
    }
    
    @IBAction func valueChange(sender: UIPageControl) {
        
        var currentPage = sender.currentPage
        scrollView.scrollRectToVisible(CGRect(x: currentPage*750/2, y: 0, width: 750/2, height: 1334/2), animated: true)
        
    }
    @IBOutlet weak var pageControl: UIPageControl!
    func scrollViewDidScroll(scrollView: UIScrollView) {
        var currentPage = scrollView.contentOffset.x*2/750
        pageControl.currentPage = Int(currentPage)
    }

    @IBOutlet weak var scrollView: UIScrollView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

