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

    static func createModule() -> UIViewController {
        // Change to get view from storyboard if not using progammatic UI
        let storyboard: UIStoryboard = UIStoryboard(name: "HomeView", bundle: Bundle.main)
        let view = storyboard.instantiateViewController(withIdentifier: "homeView") as! HomeViewController//HomeViewController(nibName: "Main", bundle: .main)
        let interactor = HomeInteractor()
        let router = HomeRouter()
        let presenter = HomePresenter(interface: view, interactor: interactor, router: router)

        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view

        return view
    }

}