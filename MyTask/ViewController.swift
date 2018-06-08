//
//  ViewController.swift
//  MyTask
//
//  Created by Mery  on 6/7/18.
//  Copyright © 2018 Mery . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
 
    @IBOutlet weak var tableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AdvertisementCellID")
        
        return cell!;
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView!.delegate = self;
        tableView!.dataSource = self;
        
        tableView.register(UINib.init(nibName: "AdvertisementCell", bundle: nil), forCellReuseIdentifier: "AdvertisementCellID")
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

