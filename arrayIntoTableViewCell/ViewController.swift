//
//  ViewController.swift
//  arrayIntoTableViewCell
//
//  Created by Maruf Howlader on 4/29/19.
//  Copyright © 2019 Creative Young. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //@IBOutlet weak var labelForData: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    let fruitsArray = ["Apple", "Watermelon",  "Orange", "Pear", "Cherry", "Strawberry", "Nectarine", "Grape", "Mango", "Blueberry", "Pomegranate", "Carambola", "Plum", "Banana", "Raspberry", "Mandarin", "Jackfruit", "Papaya", "Kiwi", "Pineapple", "Lime", "Lemon", "Apricot", "Grapefruit", "Melon", "Coconut", "Avocado", "Peach"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tvCell")!
        cell.textLabel?.text = fruitsArray[indexPath.row]
        //print(indexPath.row)
        return cell
    }
   
    
    
}

