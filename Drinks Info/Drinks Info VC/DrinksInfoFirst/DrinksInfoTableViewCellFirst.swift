//
//  DrinksInfoTableViewCell.swift
//  Drinks Info
//
//  Created by Pavel Moroz on 07.10.2020.
//

import UIKit

class DrinksInfoTableViewCellFirst: UITableViewCell {

    @IBOutlet weak var drinksImageView: UIImageView!
    @IBOutlet weak var nameOfDrinkLabel: UILabel!
    @IBOutlet weak var drinksValue: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    func createCell() -> DrinksInfoTableViewCellFirst? {
        let nib = UINib(nibName: "DrinksInfoTableViewCellFirst", bundle: nil)
        let cell = nib.instantiate(withOwner: self, options: nil).last as? DrinksInfoTableViewCellFirst
        return cell
    }

}
