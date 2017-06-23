//
//  ProductViewController.swift
//  SHIVTracking
//
//  Created by Worapong Lekuthaiphan on 6/23/17.
//  Copyright © 2017 DDTH. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {


    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    
    var productName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        productNameLabel.text = productName //SHIV Tracking System"
        productImageView.image = #imageLiteral(resourceName: "dimension-data-logo") //UIImage(named: "dimension-data-logo")
    }

    @IBAction func phoneCallPress(_ sender: AnyObject) {
        print("button tapped")
    }


}
