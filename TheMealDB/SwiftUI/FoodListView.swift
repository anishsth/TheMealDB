//
//  FoodListView.swift
//  TheMealDB
//
//  Created by Anish Shrestha on 1/4/24.
//

import SwiftUI
import Foundation

struct FoodListView: View {
    
    @StateObject var viewModel = MealViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.meal) { item in
                NavigationLink {
                    FoodDetailsView(meal: item)
                } label: {
                    HStack {
                        Text(item.strMeal ?? "")
                            .font(.headline)
                        Spacer()
                        AsyncImage(url: item.imageURL) { poster in
                            poster
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80, height: 80)
                                .cornerRadius(12.0)
                        } placeholder: {
                            ProgressView()
                                .frame(width: 80, height: 80)
                        }
                    }
                }
            }
            .navigationTitle("Desserts")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                viewModel.fetchInitialData()
            }
        }
    }
}

#Preview {
    FoodListView()
}
