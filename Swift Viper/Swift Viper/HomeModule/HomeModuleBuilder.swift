//
//  HomeModuleBuilder.swift
//  Swift Viper
//
//  Created by Andreas Velounias on 16/12/2019.
//  Copyright © 2019 Andreas Velounias. All rights reserved.
//

import UIKit

// Create the dependencies between the different components
class HomeModuleBuilder {
    
    func build() -> UIViewController {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        let presenter = HomePresenter()
        viewController.presenter = presenter
        return viewController
    }
}
