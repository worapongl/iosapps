//
//  ContactViewController.swift
//  SHIVTracking
//
//  Created by Worapong Lekuthaiphan on 6/23/17.
//  Copyright © 2017 DDTH. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.addSubview(scrollView)
        print("didLoad...")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        scrollView.contentSize = CGSize(width: 375, height: 1000)
        print("LayoutSubview")
    }

    

}
