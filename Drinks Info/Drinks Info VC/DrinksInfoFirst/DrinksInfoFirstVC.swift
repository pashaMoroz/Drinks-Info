//
//  DrinksInfoFirstVC.swift
//  Drinks Info
//
//  Created by Pavel Moroz on 09.10.2020.
//

import UIKit

class DrinksInfoFirstVC: UIViewController {

    @IBOutlet private weak var cancelButton: UIButton!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var infoTextLabel: UILabel!
    @IBOutlet private weak var tableView: UITableView! 
    @IBOutlet var contentView: UIView!

    let drinksCellId = "DrinksInfoTableViewCellFirst"

    var drinkData = [DrinksData(name: "Bear", image: "drinks_beer", value: "0.5"),
                     DrinksData(name: "Coffee", image: "drinks_coffee", value: "0.5"),
                     DrinksData(name: "Milk", image: "drinks_milk", value: "0.5"),
                     DrinksData(name: "Soda", image: "drinks_soda", value: "0.5"),
                     DrinksData(name: "Strong_alcohol", image: "drinks_strong_alcohol", value: "0.5"),
                     DrinksData(name: "Tea", image: "drinks_tea", value: "0.5"),
                     DrinksData(name: "Water", image: "drinks_water", value: "0.5"),
                     DrinksData(name: "Wine", image: "drinks_wine", value: "0.5")]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib.init(nibName: drinksCellId, bundle: nil), forCellReuseIdentifier: drinksCellId)
        tableView.delegate = self
        tableView.dataSource = self

        titleLabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        let infoText = "According to the latest research data, not only water but also everything that is drunk per day affects the state of the water balance in the body. All drinks are calculated with a certain coefficient. And alcohol lowers water level in the body."
        infoTextLabel.attributedText = NSAttributedString(string: infoText, attributes: [.kern: 0.42])
    }
}

extension DrinksInfoFirstVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return drinkData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: drinksCellId, for: indexPath) as! DrinksInfoTableViewCellFirst

        let drink = drinkData[indexPath.row]

        cell.configFavoriteCell(drink: drink)
        cell.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.9607843137, blue: 0.968627451, alpha: 1)

        return cell
    }
}

// MARK: - Make Header for Table View
extension DrinksInfoFirstVC {

     func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

            let returnedView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 50))
        
                returnedView.backgroundColor = .white

                let label = UILabel(frame: CGRect(x: 5, y: 5, width: returnedView.frame.width-10, height: returnedView.frame.height-10))

                let text = "WATER COEFFIICIENT"
                label.attributedText = NSAttributedString(string: text, attributes: [.kern: 0.42])

                returnedView.addSubview(label)

                return returnedView
            }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
}

// MARK: - Cell Configuring
extension DrinksInfoFirstVC {

    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
    {
        let verticalPadding: CGFloat = 8
        let maskLayer = CALayer()
        maskLayer.cornerRadius = 3
        maskLayer.backgroundColor = UIColor.black.cgColor
        maskLayer.frame = CGRect(x: cell.bounds.origin.x, y: cell.bounds.origin.y, width: cell.bounds.width, height: cell.bounds.height).insetBy(dx: 0, dy: verticalPadding/2)
        cell.layer.mask = maskLayer
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 58
    }
}
