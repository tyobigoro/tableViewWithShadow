//
//  ViewController.swift
//  tableViewWithShadow
//
//  Created by tyobigoro on 2020/04/27.
//  Copyright © 2020 tyobigoro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var shadowView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // tableViewにcornerRadius&clip設定
        table.layer.cornerRadius = 10
        table.clipsToBounds = true

        // shadowはこっちに受け持たせる
        shadowView.layer.cornerRadius = 10
        shadowView.layer.shadowColor = UIColor.black.cgColor
        shadowView.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        shadowView.layer.shadowOpacity = 0.5
        shadowView.layer.shadowRadius = 4
        
    }
    
}


extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "A"
        return cell
    }
    
    
}
