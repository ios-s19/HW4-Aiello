//
//  ViewController.swift
//  HW4-Aiello
//
//  Created by Tony Aiello on 4/7/19.
//  Copyright © 2019 Tony Aiello. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let places: [String] = ["Buckingham Palace", "The Eiffel Tower", "The Grand Canyon",
                          "Windsor Castle", "Empire State Building"]
    
    //let myImages: [UIImage] = [UIImage(named: "palace.png")!]
    
    
    
    let myImages: [UIImage] = [UIImage(named:"palace.png")!, UIImage(named:"tower.png")!, UIImage(named:"canyon.png")!, UIImage(named:"castle.png")!, UIImage(named:"building.png")!]
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let myCell = tableView.dequeueReusableCell(withIdentifier: "tonysCell", for: indexPath  )
        myCell.textLabel?.text = places[indexPath.row]
        myCell.imageView?.image = myImages[indexPath.row]
        
        return myCell
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

