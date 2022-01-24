//
//  HomeRemoteDataManager.swift
//  TableViewWithVIPER
//
//  Created by Douglas Cardoso on 22/01/22.
//

import Foundation

class HomeRemoteDataManager: HomeRemoteDataManagerInputProtocol {
    
    // MARK: - Properties
    var remoteRequestHandler: HomeRemoteDataManagerOutputProtocol?
    
    // MARK: - Fuctions
    func externalGetData() {
        let session = URLSession.shared
        var request = URLRequest(url: URL(string: "https://api.thecatapi.com/v1/categories")!)
        request.httpMethod = "GET"
        request.setValue("application/json; charset=utf8", forHTTPHeaderField: "Content-Type")
        request.setValue("application/x-www-form-urlencode; charset=utf8", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("no-cache", forHTTPHeaderField: "cache-control")
        session.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil, let response = response as? HTTPURLResponse else {
                print("Houve um erro de conexão: \(error)")
                return
            }
            
            if response.statusCode == 200 {
                print("Respota da API: \(data)")
                
                do {
                    let decoder = JSONDecoder()
                } catch {
                    print("Não foi possível fazer o parse dos dados, erro: \(error.localizedDescription)")
                }
            } else {
                print("Houve um erro: \(response.statusCode)")
            }
        }.resume()
    }
}
