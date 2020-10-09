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

    var drinkData = [DrinksData(name: "Kola", image: "drinks_coffee", value: "0.5"),
                     DrinksData(name: "Kola", image: "drinks_coffee", value: "0.5"),
                     DrinksData(name: "Kola", image: "drinks_coffee", value: "0.5"),
                     DrinksData(name: "Kola", image: "drinks_coffee", value: "0.5"),
                     DrinksData(name: "Kola", image: "drinks_coffee", value: "0.5"),
                     DrinksData(name: "Kola", image: "drinks_coffee", value: "0.5"),
                     DrinksData(name: "Kola", image: "drinks_coffee", value: "0.5")]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib.init(nibName: drinksCellId, bundle: nil), forCellReuseIdentifier: drinksCellId)

        tableView.delegate = self
        tableView.dataSource = self

    }
}

extension DrinksInfoFirstVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return drinkData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: drinksCellId, for: indexPath) as! DrinksInfoTableViewCellFirst


        cell.configFavoriteCell(drink: drinkData[indexPath.row])

        let drink = drinkData[indexPath.row]

        cell.configFavoriteCell(drink: drink)


        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }

}
