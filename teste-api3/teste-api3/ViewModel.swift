//
//  ViewModel.swift
//  teste-api2
//
//  Created by Turma01-23 on 30/09/24.
//

import Foundation

class ViewModel : ObservableObject {
    
    @Published var chars : [Fact] = []
    
    func fetch() {
        let task = URLSession.shared.dataTask(with: URL(string: "https://catfact.ninja/fact")!){data, _, error in
            do {
                self.chars = try JSONDecoder().decode([Fact].self, from: data!)
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
