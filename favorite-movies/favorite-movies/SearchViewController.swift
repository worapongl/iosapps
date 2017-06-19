//
//  SearchViewController.swift
//  favorite-movies
//
//  Created by Worapong Lekuthaiphan on 6/19/2560 BE.
//  Copyright © 2560 wl. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet var searchText: UITextField!
    @IBOutlet var tableView: UITableView!
    
    @IBAction func search(sender: UIButton){
        print("Searching....")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
