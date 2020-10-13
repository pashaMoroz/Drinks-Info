//
//  DrinksInfoTableViewCell.swift
//  Drinks Info
//
//  Created by Pavel Moroz on 07.10.2020.
//

import UIKit

class DrinksInfoTableViewCellFirst: UITableViewCell {

    @IBOutlet weak var drinksImage: UIImageView!
    @IBOutlet weak var nameOfDrinkLabel: UILabel!
    @IBOutlet weak var drinksValue: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func layoutSubviews() {
        super.layoutSubviews()

    }

    func configFavoriteCell(drink: DrinksData) {

      //  drinksImage.image = UIImage(named: drink.image ?? "")
        nameOfDrinkLabel.text = drink.name ?? ""
        drinksValue.text = drink.value ?? ""
        drinksImage.image = UIImage(named: drink.image ?? "")
    }

}
