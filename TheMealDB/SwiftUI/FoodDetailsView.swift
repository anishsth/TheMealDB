//
//  FoodDetailsView.swift
//  TheMealDB
//
//  Created by Anish Shrestha on 1/4/24.
//

import Foundation
import SwiftUI

struct FoodDetailsView: UIViewControllerRepresentable {
    
    @State var meal: Meal
    
    func makeUIViewController(context: Context) -> FoodDetailsViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let viewController =  storyboard.instantiateViewController(
          identifier: "FoodDetailsViewController") as? FoodDetailsViewController else {
            fatalError("Cannot load from storyboard")
        }
        viewController.meal = meal
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: FoodDetailsViewController, context: Context) {
        
    }
}
