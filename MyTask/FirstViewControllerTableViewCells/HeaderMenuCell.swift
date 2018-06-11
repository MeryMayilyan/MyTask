
import UIKit

protocol HeaderMenuCellDelegate: class {
    func didPressButton()
}

class HeaderMenuCell: UITableViewCell {
    
    weak var delegate : HeaderMenuCellDelegate?
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var headerImageView: UIImageView!
    
    @IBOutlet weak var carsForSaleButton: UIButton!
    @IBOutlet weak var propertyForRentButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var propertyButtons: UIButton!
    
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var searchView: UIView!
    
    @IBOutlet weak var propertyForSaleButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        headerView.layer.shadowColor = UIColor.gray.cgColor
        headerView.layer.shadowOpacity = 0.25
        headerView.layer.shadowOffset = CGSize.zero
        headerView.layer.shadowRadius = 2.5
        headerView.layer.shadowOffset = CGSize.init(width: 0, height: 2.5)

            
        searchView.layer.cornerRadius = 25.0
        searchView.layer.masksToBounds = true
        searchView.layer.borderWidth = 1.0
        searchView.layer.borderColor = UIColor.lightGray.cgColor
        
        searchButton.layer.cornerRadius = 0.5 * searchButton.bounds.size.width
        searchTextField.attributedPlaceholder = NSAttributedString(string: "What are you looking?",attributes: [NSAttributedStringKey.foregroundColor: UIColor.darkGray])
        
    }


    @IBAction func carsForSaleButtonAction(_ sender: Any) {
        print("button pressed")
       // if self.responds(to: Selector(("didPressButton"))) {
            delegate?.didPressButton()
     //   }
    }
    
}
