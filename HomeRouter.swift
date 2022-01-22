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
            let interactor = HomeInteractor()
            let router = HomeRouter()
            let presenter = HomePresenter()
            
            viewController.presenter = presenter
            interactor.presenter = presenter
            router.viewController = viewController
            
            return viewController
        }
        return UIViewController()
    }
}
