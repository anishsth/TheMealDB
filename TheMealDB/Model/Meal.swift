//
//  Meal.swift
//  TheMealDB
//
//  Created by Anish Shrestha on 1/3/24.
//

import Foundation

struct ContentItem: Codable {
    let meals: [Meal]
    
    enum CodingKeys: String, CodingKey {
        case meals
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.meals = try container.decode([Meal].self, forKey: .meals)
    }
}

struct Meal: Codable, Equatable, Identifiable {
    
    let strMeal: String?
    let strMealThumb: String?
    var id: String
    let strInstructions: String?
    let strArea: String?
    let strYoutube: String?
    
    var imageURL: URL? {
//        strMealThumb.map { URL(string: $0)! }
        if let imgURL = strMealThumb {
            return URL(string: imgURL)
        }
        return nil
    }
    
    let strIngredient1: String?
    let strIngredient2: String?
    let strIngredient3: String?
    let strIngredient4: String?
    let strIngredient5: String?
    let strIngredient6: String?
    let strIngredient7: String?
    let strIngredient8: String?
    let strIngredient9: String?
    let strIngredient10: String?
    let strIngredient11: String?
    let strIngredient12: String?
    let strIngredient13: String?
    let strIngredient14: String?
    let strIngredient15: String?
    let strIngredient16: String?
    let strIngredient17: String?
    let strIngredient18: String?
    let strIngredient19: String?
    let strIngredient20: String?
    
    let strMeasure1: String?
    let strMeasure2: String?
    let strMeasure3: String?
    let strMeasure4: String?
    let strMeasure5: String?
    let strMeasure6: String?
    let strMeasure7: String?
    let strMeasure8: String?
    let strMeasure9: String?
    let strMeasure10: String?
    let strMeasure11: String?
    let strMeasure12: String?
    let strMeasure13: String?
    let strMeasure14: String?
    let strMeasure15: String?
    let strMeasure16: String?
    let strMeasure17: String?
    let strMeasure18: String?
    let strMeasure19: String?
    let strMeasure20: String?
    
    var ingredient: String {
        var ingredient = ""
        
        if !(strIngredient1.isEmptyOrNil && strMeasure1.isEmptyOrNil) {
            ingredient += "\(strIngredient1 ?? "") : \(strMeasure1 ?? "")\n\n"
        }
        
        if !(strIngredient2.isEmptyOrNil && strMeasure2.isEmptyOrNil) {
            ingredient += "\(strIngredient2 ?? "") : \(strMeasure2 ?? "")\n\n"
        }
        
        if !(strIngredient3.isEmptyOrNil && strMeasure3.isEmptyOrNil) {
            ingredient += "\(strIngredient3 ?? "") : \(strMeasure3 ?? "")\n\n"
        }
        
        if !(strIngredient4.isEmptyOrNil && strMeasure4.isEmptyOrNil) {
            ingredient += "\(strIngredient4 ?? "") : \(strMeasure4 ?? "")\n\n"
        }
        
        if !(strIngredient5.isEmptyOrNil && strMeasure5.isEmptyOrNil) {
            ingredient += "\(strIngredient5 ?? "") : \(strMeasure5 ?? "")\n\n"
        }
        
        if !(strIngredient6.isEmptyOrNil && strMeasure6.isEmptyOrNil) {
            ingredient += "\(strIngredient6 ?? "") : \(strMeasure6 ?? "")\n\n"
        }
        
        if !(strIngredient7.isEmptyOrNil && strMeasure7.isEmptyOrNil) {
            ingredient += "\(strIngredient7 ?? "") : \(strMeasure7 ?? "")\n\n"
        }
        
        if !(strIngredient8.isEmptyOrNil && strMeasure8.isEmptyOrNil) {
            ingredient += "\(strIngredient8 ?? "") : \(strMeasure8 ?? "")\n\n"
        }
        
        if !(strIngredient9.isEmptyOrNil && strMeasure9.isEmptyOrNil) {
            ingredient += "\(strIngredient9 ?? "") : \(strMeasure9 ?? "")\n\n"
        }
        
        if !(strIngredient10.isEmptyOrNil && strMeasure10.isEmptyOrNil) {
            ingredient += "\(strIngredient10 ?? "") : \(strMeasure10 ?? "")\n\n"
        }
        
        if !(strIngredient11.isEmptyOrNil && strMeasure11.isEmptyOrNil) {
            ingredient += "\(strIngredient11 ?? "") : \(strMeasure11 ?? "")\n\n"
        }
        
        if !(strIngredient12.isEmptyOrNil && strMeasure12.isEmptyOrNil) {
            ingredient += "\(strIngredient12 ?? "") : \(strMeasure12 ?? "")\n\n"
        }
        
        if !(strIngredient13.isEmptyOrNil && strMeasure13.isEmptyOrNil) {
            ingredient += "\(strIngredient13 ?? "") : \(strMeasure13 ?? "")\n\n"
        }
        
        if !(strIngredient14.isEmptyOrNil && strMeasure14.isEmptyOrNil) {
            ingredient += "\(strIngredient14 ?? "") : \(strMeasure14 ?? "")\n\n"
        }
        
        if !(strIngredient15.isEmptyOrNil && strMeasure15.isEmptyOrNil) {
            ingredient += "\(strIngredient15 ?? "") : \(strMeasure15 ?? "")\n\n"
        }
        
        if !(strIngredient16.isEmptyOrNil && strMeasure16.isEmptyOrNil) {
            ingredient += "\(strIngredient16 ?? "") : \(strMeasure16 ?? "")\n\n"
        }
        
        if !(strIngredient17.isEmptyOrNil && strMeasure17.isEmptyOrNil) {
            ingredient += "\(strIngredient17 ?? "") : \(strMeasure17 ?? "")\n\n"
        }
        
        if !(strIngredient18.isEmptyOrNil && strMeasure18.isEmptyOrNil) {
            ingredient += "\(strIngredient18 ?? "") : \(strMeasure18 ?? "")\n\n"
        }
        
        if !(strIngredient19.isEmptyOrNil && strMeasure19.isEmptyOrNil) {
            ingredient += "\(strIngredient19 ?? "") : \(strMeasure19 ?? "")\n\n"
        }
        
        if !(strIngredient20.isEmptyOrNil && strMeasure20.isEmptyOrNil) {
            ingredient += "\(strIngredient20 ?? "") : \(strMeasure20 ?? "")\n\n"
        }
        
        return ingredient
    }
    
    enum CodingKeys: String, CodingKey {
        case strMeal
        case strMealThumb
        case id = "idMeal"
        case strInstructions
        case strArea
        case strYoutube
        case strIngredient1
        case strIngredient2
        case strIngredient3
        case strIngredient4
        case strIngredient5
        case strIngredient6
        case strIngredient7
        case strIngredient8
        case strIngredient9
        case strIngredient10
        case strIngredient11
        case strIngredient12
        case strIngredient13
        case strIngredient14
        case strIngredient15
        case strIngredient16
        case strIngredient17
        case strIngredient18
        case strIngredient19
        case strIngredient20
        
        case strMeasure1
        case strMeasure2
        case strMeasure3
        case strMeasure4
        case strMeasure5
        case strMeasure6
        case strMeasure7
        case strMeasure8
        case strMeasure9
        case strMeasure10
        case strMeasure11
        case strMeasure12
        case strMeasure13
        case strMeasure14
        case strMeasure15
        case strMeasure16
        case strMeasure17
        case strMeasure18
        case strMeasure19
        case strMeasure20
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.strMeal = try container.decodeIfPresent(String.self, forKey: .strMeal)
        self.strMealThumb = try container.decodeIfPresent(String.self, forKey: .strMealThumb)
        self.id = try container.decode(String.self, forKey: .id)
        self.strInstructions = try container.decodeIfPresent(String.self, forKey: .strInstructions)
        self.strArea = try container.decodeIfPresent(String.self, forKey: .strArea)
        self.strYoutube = try container.decodeIfPresent(String.self, forKey: .strYoutube)
        
        self.strIngredient1 = try container.decodeIfPresent(String.self, forKey: .strIngredient1)?.localizedCapitalized
        self.strIngredient2 = try container.decodeIfPresent(String.self, forKey: .strIngredient2)?.localizedCapitalized
        self.strIngredient3 = try container.decodeIfPresent(String.self, forKey: .strIngredient3)?.localizedCapitalized
        self.strIngredient4 = try container.decodeIfPresent(String.self, forKey: .strIngredient4)?.localizedCapitalized
        self.strIngredient5 = try container.decodeIfPresent(String.self, forKey: .strIngredient5)?.localizedCapitalized
        self.strIngredient6 = try container.decodeIfPresent(String.self, forKey: .strIngredient6)?.localizedCapitalized
        self.strIngredient7 = try container.decodeIfPresent(String.self, forKey: .strIngredient7)?.localizedCapitalized
        self.strIngredient8 = try container.decodeIfPresent(String.self, forKey: .strIngredient8)?.localizedCapitalized
        self.strIngredient9 = try container.decodeIfPresent(String.self, forKey: .strIngredient9)?.localizedCapitalized
        self.strIngredient10 = try container.decodeIfPresent(String.self, forKey: .strIngredient10)?.localizedCapitalized
        self.strIngredient11 = try container.decodeIfPresent(String.self, forKey: .strIngredient11)?.localizedCapitalized
        self.strIngredient12 = try container.decodeIfPresent(String.self, forKey: .strIngredient12)?.localizedCapitalized
        self.strIngredient13 = try container.decodeIfPresent(String.self, forKey: .strIngredient13)?.localizedCapitalized
        self.strIngredient14 = try container.decodeIfPresent(String.self, forKey: .strIngredient14)?.localizedCapitalized
        self.strIngredient15 = try container.decodeIfPresent(String.self, forKey: .strIngredient15)?.localizedCapitalized
        self.strIngredient16 = try container.decodeIfPresent(String.self, forKey: .strIngredient16)?.localizedCapitalized
        self.strIngredient17 = try container.decodeIfPresent(String.self, forKey: .strIngredient17)?.localizedCapitalized
        self.strIngredient18 = try container.decodeIfPresent(String.self, forKey: .strIngredient18)?.localizedCapitalized
        self.strIngredient19 = try container.decodeIfPresent(String.self, forKey: .strIngredient19)?.localizedCapitalized
        self.strIngredient20 = try container.decodeIfPresent(String.self, forKey: .strIngredient20)?.localizedCapitalized
        
        self.strMeasure1 = try container.decodeIfPresent(String.self, forKey: .strMeasure1)
        self.strMeasure2 = try container.decodeIfPresent(String.self, forKey: .strMeasure2)
        self.strMeasure3 = try container.decodeIfPresent(String.self, forKey: .strMeasure3)
        self.strMeasure4 = try container.decodeIfPresent(String.self, forKey: .strMeasure4)
        self.strMeasure5 = try container.decodeIfPresent(String.self, forKey: .strMeasure5)
        self.strMeasure6 = try container.decodeIfPresent(String.self, forKey: .strMeasure6)
        self.strMeasure7 = try container.decodeIfPresent(String.self, forKey: .strMeasure7)
        self.strMeasure8 = try container.decodeIfPresent(String.self, forKey: .strMeasure8)
        self.strMeasure9 = try container.decodeIfPresent(String.self, forKey: .strMeasure9)
        self.strMeasure10 = try container.decodeIfPresent(String.self, forKey: .strMeasure10)
        self.strMeasure11 = try container.decodeIfPresent(String.self, forKey: .strMeasure11)
        self.strMeasure12 = try container.decodeIfPresent(String.self, forKey: .strMeasure12)
        self.strMeasure13 = try container.decodeIfPresent(String.self, forKey: .strMeasure13)
        self.strMeasure14 = try container.decodeIfPresent(String.self, forKey: .strMeasure14)
        self.strMeasure15 = try container.decodeIfPresent(String.self, forKey: .strMeasure15)
        self.strMeasure16 = try container.decodeIfPresent(String.self, forKey: .strMeasure16)
        self.strMeasure17 = try container.decodeIfPresent(String.self, forKey: .strMeasure17)
        self.strMeasure18 = try container.decodeIfPresent(String.self, forKey: .strMeasure18)
        self.strMeasure19 = try container.decodeIfPresent(String.self, forKey: .strMeasure19)
        self.strMeasure20 = try container.decodeIfPresent(String.self, forKey: .strMeasure20)
    }
}
