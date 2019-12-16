//
//  HomeRouter.swift
//  Swift Viper
//
//  Created by Andreas Velounias on 16/12/2019.
//  Copyright © 2019 Andreas Velounias. All rights reserved.
//

import UIKit

protocol HomeRouting {
    
}

// Navigation
class HomeRouter {
    var viewController: UIViewController
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
}

extension HomeRouter: HomeRouting {
    
}
