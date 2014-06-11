//
//  ViewController.swift
//  Horrible Cards
//
//  Created by Sidney San Martín on 6/10/14.
//  Copyright (c) 2014 Coordinated Hackers. All rights reserved.
//

import UIKit

class HandDataSource: NSObject, UITableViewDataSource {
    func tableView(tableView: UITableView!,
        cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
            var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: nil)
            cell.text = "Some Horrible Thing"
            return cell
    }
    
    func tableView(tableView: UITableView!,
        numberOfRowsInSection section: Int) -> Int {
            return 5;
    }
    
}

class ViewController: UIViewController, UITableViewDataSource {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView!,
        cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
            let identifier = "card"
            var cell = tableView.dequeueReusableCellWithIdentifier(identifier) as? UITableViewCell
            if cell == nil {
                cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: identifier)
            }
            cell!.text = "Some Horrible Thing"
            return cell
    }
    
    func tableView(tableView: UITableView!,
        numberOfRowsInSection section: Int) -> Int {
            return 5;
    }



}