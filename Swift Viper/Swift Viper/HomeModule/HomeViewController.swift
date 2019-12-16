//
//  ViewController.swift
//  Swift Viper
//
//  Created by Andreas Velounias on 16/12/2019.
//  Copyright © 2019 Andreas Velounias. All rights reserved.
//

import UIKit

protocol HomeView: class {
    func updateTitle(title: String)
}

// View
class HomeViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    
    var presenter: HomePresentation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.viewDidLoad()
    }
}

extension HomeViewController: HomeView {
    
    func updateTitle(title: String) {
        self.helloLabel.text = title
    }
}

