
import UIKit

class NameCell: UITableViewCell {

    @IBOutlet weak var personImageView: UIImageView!
    
    @IBOutlet weak var callView: UIView!
  
    @IBOutlet weak var callButtonAndIconView: UIView!
    @IBOutlet weak var announcementLabel: UILabel!
    @IBOutlet weak var nameAndCallView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var announcementLabelTopConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        let color  = UIColor.init(red: 25/255, green: 204/255, blue: 166/255, alpha: 1)
        callView.backgroundColor = color

        callView.layer.cornerRadius = 0.5 * callView.bounds.size.height
        callView.layer.masksToBounds = true
        callButtonAndIconView.backgroundColor = color


    }

    
}
