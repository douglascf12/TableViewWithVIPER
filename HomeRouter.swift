//
//  HomeRouter.swift
//  TableViewWithVIPER
//
//  Created by Douglas Cardoso on 18/01/22.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class HomeRouter: HomeWireframeProtocol {

    weak var viewController: UIViewController?

    static func createHomeModule() -> UIViewController {
        let storyoard = UIStoryboard(name: "HomeView", bundle: Bundle.main)
        let view = storyoard.instantiateViewController(withIdentifier: "navigation")
        
        if let viewController = view.children.first as? HomeViewController {
            let presenter: HomePresenterProtocol & HomeInteractorOutputProtocol = HomePresenter()
            let interactor: HomeInteractorInputProtocol & HomeRemoteDataManagerOutputProtocol = HomeInteractor()
            let localDataManager: HomeLocalDataManagerInputProtocol = HomeLocalDataManager()
            let remoteDataManaher: HomeRemoteDataManagerInputProtocol = HomeRemoteDataManager()
            let router: HomeWireframeProtocol = HomeRouter()
            
            viewController.presenter = presenter
            presenter.view = viewController
            presenter.router = router
            presenter.interactor = interactor
            interactor.presenter = presenter
            interactor.localDataManager = localDataManager
            interactor.remoteDataManager = remoteDataManaher
            remoteDataManaher.remoteRequestHandler = interactor
            
            return viewController
        }
        return UIViewController()
    }
}
