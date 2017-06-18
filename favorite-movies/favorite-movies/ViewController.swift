//
//  ViewController.swift
//  favorite-movies
//
//  Created by Worapong Lekuthaiphan on 6/18/2560 BE.
//  Copyright © 2560 wl. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var favoriteMovies: [Movie] = []
    
    @IBOutlet var mainTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoriteMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let moviecell = tableView.dequeueReusableCell(withIdentifier: "customcell",
                                                      for: indexPath) as! CustomTableViewCell
        
        let idx: Int = indexPath.row
        
        moviecell.movieTitle?.text = favoriteMovies[idx].title
        moviecell.movieYear?.text = favoriteMovies[idx].year
        displayMovieImage(idx, moviecell: moviecell)
        return moviecell
        
    }
    
    func displayMovieImage(_ row: Int, moviecell: CustomTableViewCell){
        let url: String = (URL(string: favoriteMovies[row].imageUrl)?.absoluteString)!
        URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { (data,response,error)->Void in
            if error != nil{
                print(error!)
                return
            }
            
            DispatchQueue.main.async(execute:  {
                let image = UIImage(data: data!)
                moviecell.movieImageView?.image = image
                
            })
        }).resume()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        mainTableView.reloadData()
        if favoriteMovies.count == 0{
            favoriteMovies.append(Movie(id: "tt3322234", title: "Batman Begin", year: "2017", imageUrl: "https://images-na.ssl-images-amazon.com/images/I/51FNDCZH83L._AC_UL115_.jpg"))
        }
        
        super.viewWillAppear(animated)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

