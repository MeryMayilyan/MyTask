
import UIKit

class ItemsForRentViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
  
        tableView.register(UINib.init(nibName: "ItemHeaderCell", bundle: nil), forCellReuseIdentifier: "ItemHeaderCellID")
        tableView.register(UINib.init(nibName: "NameCell", bundle: nil), forCellReuseIdentifier: "NameCellID")
        tableView.register(UINib.init(nibName: "ItemInfoCell", bundle: nil), forCellReuseIdentifier: "ItemInfoCellID")
        tableView.register(UINib.init(nibName: "AdvertisementCell", bundle: nil), forCellReuseIdentifier: "AdvertisementCellID")
//        tableView.register(UINib.init(nibName: "ItemDescriptionCell", bundle: nil), forCellReuseIdentifier: "ItemDescriptionCellID")
    }
    
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
            cell = tableView.dequeueReusableCell(withIdentifier: "ItemHeaderCellID")
        }
        else if indexPath.row == 1 {
            cell =  tableView.dequeueReusableCell(withIdentifier: "NameCellID")
        }
//        else if indexPath.row == 2 {
//            cell =  tableView.dequeueReusableCell(withIdentifier: "ItemDescriptionCellID")
//        }
        else if indexPath.row == 3 || indexPath.row == 4 || indexPath.row == 5 {
            cell = tableView.dequeueReusableCell(withIdentifier: "ItemInfoCellID")
        }
        else {
            cell = tableView.dequeueReusableCell(withIdentifier: "AdvertisementCellID")
        }
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 1 || indexPath.row == 3 || indexPath.row == 4 || indexPath.row == 5 {
            return 80
        }
        else {
            return 300
        }
    }
    
    
    
}
