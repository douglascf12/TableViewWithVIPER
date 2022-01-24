//
//  HomePresenter.swift
//  TableViewWithVIPER
//
//  Created by Douglas Cardoso on 18/01/22.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class HomePresenter {

    // MARK: - Properties
    weak var view: HomeViewProtocol?
    var interactor: HomeInteractorInputProtocol?
    var router: HomeWireframeProtocol?
}

extension HomePresenter: HomePresenterProtocol {
    func viewDidLoad() {
        interactor?.interactorGetData()
    }
}

extension HomePresenter: HomeInteractorOutputProtocol {
    // MARK: HomeInteractorOutputProtocol functions
}
