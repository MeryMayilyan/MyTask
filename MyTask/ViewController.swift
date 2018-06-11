//
//  ViewController.swift
//  MyTask
//
//  Created by Mery  on 6/7/18.
//  Copyright © 2018 Mery . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, HeaderMenuCellDelegate {
    
    var carImages = ["car1","car3","car5","car4","car2","car6","car7","car8","car9","car10"]
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true
        
        tableView!.delegate = self;
        tableView!.dataSource = self;
        
        tableView!.separatorColor = UIColor.clear
        
        tableView.register(UINib.init(nibName: "HeaderMenuCell", bundle: nil), forCellReuseIdentifier: "MenuCellID")
        tableView.register(UINib.init(nibName: "AdvertisementCell", bundle: nil), forCellReuseIdentifier: "AdvertisementCellID")
        tableView.register(UINib.init(nibName: "LastAnnouncementsCell", bundle: nil), forCellReuseIdentifier: "LastAnnouncementsCellID")
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    //MARK: UITableViewDataSource,UITableViewDelegate
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 15.0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell!
        if indexPath.row == 0 {
            let headerCell : HeaderMenuCell!
            headerCell = tableView.dequeueReusableCell(withIdentifier: "MenuCellID") as! HeaderMenuCell
            headerCell.delegate = self
            return headerCell!
        }
        else if indexPath.row == 1 {
            cell = tableView.dequeueReusableCell(withIdentifier: "LastAnnouncementsCellID")
        }
        else {
            let adCell : AdvertisementCell!
            adCell  = tableView.dequeueReusableCell(withIdentifier: "AdvertisementCellID") as! AdvertisementCell
            adCell.advertisementImageView.image = UIImage(named: carImages[indexPath.row])
            cell = adCell as UITableViewCell!
        }
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 450
        }
        else if indexPath.row == 1 {
            return 45
        }
        return 300
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row != 0 && indexPath.row != 1 {
            performSegue(withIdentifier: "segueID", sender: self)
        }
    }
    
    //MARK: HeaderMenuCellDelegate
    
    func didPressButton() {
        performSegue(withIdentifier: "segueID", sender: self)
    }
    
    
}

