
import UIKit

class ItemHeaderCell: UITableViewCell {

  
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var itemHeaderView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        itemHeaderView.layer.shadowColor = UIColor.gray.cgColor
        itemHeaderView.layer.shadowOpacity = 0.25
        itemHeaderView.layer.shadowOffset = CGSize.zero
        itemHeaderView.layer.shadowRadius = 2.5
        itemHeaderView.layer.shadowOffset = CGSize.init(width: 0, height: 2.5)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
