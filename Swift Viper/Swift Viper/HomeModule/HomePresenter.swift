//
//  HomePresenter.swift
//  Swift Viper
//
//  Created by Andreas Velounias on 16/12/2019.
//  Copyright © 2019 Andreas Velounias. All rights reserved.
//

import Foundation

protocol HomePresentation {
    func viewDidLoad() -> Void
}

// Delegates the work between the various components
class HomePresenter {
    
    weak var view: HomeView?
    var interactor: HomeUseCase
    var router: HomeRouting
    
    init(view: HomeView, interactor: HomeUseCase, router: HomeRouting) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension HomePresenter: HomePresentation {
    
    func viewDidLoad() {
        let homeModel = self.interactor.getModel()
        DispatchQueue.main.async { [weak self] in
            guard let `self` = self else { return }
            self.view?.updateTitle(title: homeModel.title)
        }
    }
}
