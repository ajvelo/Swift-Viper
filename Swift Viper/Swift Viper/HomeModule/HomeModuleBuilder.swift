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
    
    static func build() -> UIViewController {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        let interactor = HomeInteractor()
        let router = HomeRouter(viewController: viewController)
        let presenter = HomePresenter(view: viewController, interactor: interactor, router: router)
        viewController.presenter = presenter
        return viewController
    }
}
