//
//  HomeProtocols.swift
//  TableViewWithVIPER
//
//  Created by Douglas Cardoso on 18/01/22.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

// MARK: WireFrameProtocol

protocol HomeWireframeProtocol: AnyObject {

}

// MARK: PresenterProtocol
protocol HomePresenterProtocol: AnyObject {
    var interactor: HomeInteractorInputProtocol? { get set }
    
    func viewDidLoad()
}

// MARK: InteractorProtocol

protocol HomeInteractorOutputProtocol: AnyObject {

    /** Interactor -> Presenter */
}

protocol HomeInteractorInputProtocol: AnyObject {

    var presenter: HomeInteractorOutputProtocol? { get set }

    /** Presenter -> Interactor */
}

// MARK: ViewProtocol

protocol HomeViewProtocol: AnyObject {

    var presenter: HomePresenterProtocol? { get set }

    /** Presenter -> ViewController */
}
