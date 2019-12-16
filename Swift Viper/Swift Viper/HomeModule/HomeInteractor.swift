//
//  HomeInteractor.swift
//  Swift Viper
//
//  Created by Andreas Velounias on 16/12/2019.
//  Copyright © 2019 Andreas Velounias. All rights reserved.
//

protocol HomeUseCase {
    func getModel() -> HomeModel
}

// Handles business logic
class HomeInteractor {
    
}

extension HomeInteractor: HomeUseCase {
    
    func getModel() -> HomeModel {
        return HomeModel(title: "Hello VIPER!")
    }
}
