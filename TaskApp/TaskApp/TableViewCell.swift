//
//  TableViewCell.swift
//  TaskApp
//
//  Created by Boss Hog on 2021-02-02.
//

import UIKit

class TableViewCell: UITableViewCell, UITextFieldDelegate {
    
    static let identifier = "TableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "TableViewCell", bundle: nil)
    }
    
    @IBOutlet var field: UITextField!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        field.placeholder = ""
        field.delegate = self
        // Initialization code
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("\(textField.text ?? "")")
        return true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
