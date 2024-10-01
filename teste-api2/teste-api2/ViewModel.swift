//
//  ViewModel.swift
//  teste-api2
//
//  Created by Turma01-23 on 30/09/24.
//

import Foundation

class ViewModel : ObservableObject {
    
    @Published var chars : [Moeda] = []
    
    func fetch() {
        let task = URLSession.shared.dataTask(with: URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=15&page=1&sparkline=false")!){data, _, error in
            do {
                self.chars = try JSONDecoder().decode([Moeda].self, from: data!)
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
