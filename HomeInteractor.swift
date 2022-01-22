//
//  HomeInteractor.swift
//  TableViewWithVIPER
//
//  Created by Douglas Cardoso on 18/01/22.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

class HomeInteractor: HomeInteractorInputProtocol {
    
    // MARK: - Properties
    weak var presenter: HomeInteractorOutputProtocol?
    var localDataManager: HomeLocalDataManagerInputProtocol?
    var remoteDataManager: HomeRemoteDataManagerInputProtocol?
}

extension HomeInteractor: HomeRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}
