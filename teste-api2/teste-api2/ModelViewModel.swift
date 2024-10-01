//
//  ModelViewModel.swift
//  teste-api2
//
//  Created by Turma01-23 on 30/09/24.
//

import Foundation


class ModelViewModel : ObservableObject {
    
    @Published var chars : [Carro] = []
    
    func fetch() {
        
        let task = URLSession.shared.dataTask(with: URL(string: "https://www.carqueryapi.com/api/0.3/?callback=?&cmd=getModels&make=ford")!){data, _, error in
            do {
                self.chars = try JSONDecoder().decode([Carro].self, from: data!)
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
