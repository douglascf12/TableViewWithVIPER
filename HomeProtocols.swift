//
//  HomeProtocols.swift
//  TableViewWithVIPER
//
//  Created by Douglas Cardoso on 18/01/22.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import UIKit

// MARK: WireFrameProtocol
protocol HomeWireframeProtocol: AnyObject {
    /** Presenter -> Wireframe */
    static func createHomeModule() -> UIViewController
}

// MARK: PresenterProtocol
protocol HomePresenterProtocol: AnyObject {
    /** View -> Presenter */
    var view: HomeViewProtocol? { get set }
    var interactor: HomeInteractorInputProtocol? { get set }
    var router: HomeWireframeProtocol? { get set }
    
    func viewDidLoad()
}

// MARK: InteractorProtocol
protocol HomeInteractorOutputProtocol: AnyObject {
    /** Interactor -> Presenter */
}

protocol HomeInteractorInputProtocol: AnyObject {
    /** Presenter -> Interactor */
    var presenter: HomeInteractorOutputProtocol? { get set }
}

// MARK: ViewProtocol
protocol HomeViewProtocol: AnyObject {
    /** Presenter -> ViewController */
    var presenter: HomePresenterProtocol? { get set }
}
