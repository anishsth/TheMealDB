//
//  MealViewModel.swift
//  TheMealDB
//
//  Created by Anish Shrestha on 1/4/24.
//

import Combine
import Foundation

final class MealViewModel: ObservableObject {
        
    @Published var meal: [Meal] = []
    var cancellables = Set<AnyCancellable>()
        
    func fetchInitialData() {
        NetworkService.session.fetchItems()
            .map(\.meals)
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .finished:()
                case .failure(let error):
                    print(error.localizedDescription)
                }
            } receiveValue: { [weak self] meal in
                self?.meal = meal
            }
            .store(in: &cancellables)
    }
}
