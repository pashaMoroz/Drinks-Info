//
//  ViewController.swift
//  Drinks Info
//
//  Created by Pavel Moroz on 07.10.2020.
//

import UIKit

class MainViewController: UIViewController {

    let bottonFirst = UIButton()
    let bottonSecond = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        setupView()
    }

    func setupView() {
        view.addSubview(bottonFirst)
        view.addSubview(bottonSecond)

        bottonFirst.translatesAutoresizingMaskIntoConstraints = false
        bottonSecond.translatesAutoresizingMaskIntoConstraints = false

        bottonFirst.setTitle("Open First Detail View", for: .normal)
        bottonSecond.setTitle("Open Second Detail View", for: .normal)

        bottonFirst.addTarget(self, action: #selector(openFirstDetailView), for: .touchUpInside)
        bottonSecond.addTarget(self, action: #selector(openSecondDetailView), for: .touchUpInside)

        bottonFirst.setTitleColor(.black, for: .normal)
        bottonSecond.setTitleColor(.black, for: .normal)

        NSLayoutConstraint.activate([
            bottonFirst.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bottonFirst.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            bottonSecond.topAnchor.constraint(equalTo: bottonFirst.bottomAnchor, constant: 25),
            bottonSecond.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

    @objc func openFirstDetailView() {
        print(#function)
        
        let myViewController = DrinksInfoFirstVC(nibName: "DrinksInfoFirstVC", bundle: nil)
        self.present(myViewController, animated: true, completion: nil)
    }

    @objc func openSecondDetailView() {
        print(#function)
    }
}

